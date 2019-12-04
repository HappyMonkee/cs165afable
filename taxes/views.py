from django.http import HttpResponse, HttpResponseRedirect, Http404
from django.urls import reverse
from django.template import loader
from .models import Document, Taxpayer, Business 
    

table_models = {
    "Document" : Document, 
    "Taxpayer" : Taxpayer, 
    "Business" : Business,
}

def display(request):
    table_list = [ 
        {   
            'name'      : table._meta.db_table[6:].capitalize(),
            'fields'    : [f.verbose_name for f in table._meta.fields],
            'row_list'  : [[field.value_to_string(obj) for field in table._meta.fields] for obj in table.objects.order_by(table._meta.fields[1].name)]
        } for keyv, table in table_models.items()
    ]

    join_list = [
        {
            'name' : 'BusinessOwner',
            'fields' : ['temp','TIN', 'Taxpayer_Name', 'SBN'],
            'row_list': [['temp', doc.TIN.TIN, doc.TIN.Name, doc.SBN.SBN] for doc in Document.objects.order_by("TIN", "SBN")],
        }
    ]
    
    table_list.extend(join_list)


    template = loader.get_template('taxes/display.html')

    context_list = {
        'table_list' : table_list,
        'join_list' : join_list,
    }

    return HttpResponse(template.render(context_list, request))

# Create
def create(request, table_name):
    template = loader.get_template('taxes/create.html')
    context_list = {
        'table_models' : table_models,
        'table_name' : table_name,
    }
    return HttpResponse(template.render(context_list, request))

# Update
def update(request, table_name, value_id):
    try:
        table = table_models[table_name]
    except KeyError:
        raise Http404("Table does not exist")

    obj = table.objects.get(id = value_id)
    fields = table._meta.fields[1:]
    values = { f.name : f.value_to_string(obj) for f in fields}
    context_list = {
        'value_id' : value_id, 
        'values' : values,
        'table_models' : table_models,
        'table_name' : table_name,
    }
    template = loader.get_template('taxes/update.html')
    return HttpResponse(template.render(context_list, request))

# Delete
def delete(request, table_name, value_id):
    table = table_models[table_name]
    value = table.objects.get(id = value_id)
    value.delete()
    return HttpResponseRedirect(reverse('taxes:display'))

# Verify
def verify(request, table_name):
    try:
        table = table_models[table_name]
    except KeyError:
        raise Http404("Table does not exist")

    
    fields = table._meta.fields[1:]
    try:
        init_vals = { f.name : request.POST[f.name] for f in fields }
        if table_name == "Document":
            if request.POST['DLN'] in [d.DLN for d in Document.objects.all()]:
                raise KeyError

            try:
                obj = Taxpayer.objects.get(TIN=init_vals['TIN'])
            except:
                obj = Taxpayer(TIN=init_vals['TIN'])
                obj.save()
            init_vals['TIN'] = obj

            try:
                obj = Business.objects.get(SBN=init_vals['SBN'])
            except:
                obj = Business(SBN=init_vals['SBN'])
                obj.save()
            init_vals['SBN'] = obj

        new_entry = table(**init_vals)
        new_entry.save()
        
        return HttpResponseRedirect(reverse('taxes:display'))
    except:
        template = loader.get_template('taxes/create.html')
        context_list = {
            'table_models' : table_models,
            'table_name' : table_name,
            'error_message' : "{} entry already exists".format(table_name),
        }
        return HttpResponse(template.render(context_list, request))
               


    return HttpResponse("Verify here")

# Successs
def success(request):
    return HttpResponse("Successs here")

def process(request, table_name, value_id):
    try:
        table = table_models[table_name]
    except:
        raise Http404("Table not found")

    fields = table._meta.fields[1:]
    try:
        init_vals = { f.name : request.POST[f.name] for f in fields }
    except:
        template = loader.get_template('taxes/update.html')
        context_list = {
            'table_name' : table_name,
            'value_id' : value_id, 
            'table_models' : table_models,
            'error_message' : ' '.join([f.name for f in fields if f.name not in request.POST]),
        }
        return HttpResponse(template.render(context_list, request))
    else:
        table.objects.filter(id = value_id).update(**init_vals)
        return HttpResponseRedirect(reverse('taxes:display'))


    return HttpResponse("Verify here")