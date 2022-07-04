/**
 * @description       : AURA10 - Picklist with All available Object as a Parameter
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-04-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
global class AURA10_PicklistServerController extends VisualEditor.DynamicPickList{
    
    global override VisualEditor.DataRow getDefaultValue(){
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('account', 'Account');
        return defaultValue;
    }
    global override VisualEditor.DynamicPickListRows getValues() {        
        VisualEditor.DynamicPickListRows  picklistRowsList = new VisualEditor.DynamicPickListRows();
        List<VisualEditor.DataRow> dataRowsList = new List<VisualEditor.DataRow>();
        for(Schema.SObjectType sobjectTypeName:schema.getGlobalDescribe().values()){
            VisualEditor.DataRow rowObj = new VisualEditor.DataRow(sobjectTypeName.getDescribe().getLabel(), sobjectTypeName.getDescribe().getName());
            dataRowsList.add(rowObj);
           
        }
         picklistRowsList.addAllRows(dataRowsList);      
       
        return picklistRowsList;
    }
}