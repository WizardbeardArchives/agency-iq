require 'test_helper'

class PoTemplatesControllerTest < ActionController::TestCase
  setup do
    @po_template = po_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:po_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create po_template" do
    assert_difference('PoTemplate.count') do
      post :create, po_template: { PT_ADDED_BY: @po_template.PT_ADDED_BY, PT_ADDED_WHEN: @po_template.PT_ADDED_WHEN, PT_APPROVAL1: @po_template.PT_APPROVAL1, PT_APPROVAL2: @po_template.PT_APPROVAL2, PT_APPROVAL3: @po_template.PT_APPROVAL3, PT_COST: @po_template.PT_COST, PT_DESC: @po_template.PT_DESC, PT_DESC_LABEL: @po_template.PT_DESC_LABEL, PT_DISCLAIMER: @po_template.PT_DISCLAIMER, PT_EDITED_BY: @po_template.PT_EDITED_BY, PT_EDITED_WHEN: @po_template.PT_EDITED_WHEN, PT_FIELD1: @po_template.PT_FIELD1, PT_FIELD2: @po_template.PT_FIELD2, PT_FIELD3: @po_template.PT_FIELD3, PT_FIELD4: @po_template.PT_FIELD4, PT_FIELD5: @po_template.PT_FIELD5, PT_FIELD_LABEL1: @po_template.PT_FIELD_LABEL1, PT_FIELD_LABEL2: @po_template.PT_FIELD_LABEL2, PT_FIELD_LABEL3: @po_template.PT_FIELD_LABEL3, PT_FIELD_LABEL4: @po_template.PT_FIELD_LABEL4, PT_FIELD_LABEL5: @po_template.PT_FIELD_LABEL5, PT_GROSS: @po_template.PT_GROSS, PT_ITEM_DESC: @po_template.PT_ITEM_DESC, PT_JOB_NUM: @po_template.PT_JOB_NUM, PT_KIND: @po_template.PT_KIND, PT_MARKUP: @po_template.PT_MARKUP, PT_PC: @po_template.PT_PC, PT_QTY: @po_template.PT_QTY, PT_QTY_LABEL: @po_template.PT_QTY_LABEL, PT_SHIP1: @po_template.PT_SHIP1, PT_SHIP2: @po_template.PT_SHIP2, PT_SHIP3: @po_template.PT_SHIP3, PT_SHIP4: @po_template.PT_SHIP4, PT_SHIP_NOTE: @po_template.PT_SHIP_NOTE, PT_TASK: @po_template.PT_TASK, PT_TAX: @po_template.PT_TAX, PT_TAX_EXEMPT: @po_template.PT_TAX_EXEMPT, PT_TEMPLATE: @po_template.PT_TEMPLATE, PT_TERMS1: @po_template.PT_TERMS1, PT_TERMS2: @po_template.PT_TERMS2, PT_TERMS3: @po_template.PT_TERMS3, PT_TERMS_CONDITIONS: @po_template.PT_TERMS_CONDITIONS, PT_TERMS_HEADER: @po_template.PT_TERMS_HEADER, PT_TERMS_PRINT1: @po_template.PT_TERMS_PRINT1, PT_TERMS_PRINT2: @po_template.PT_TERMS_PRINT2, PT_TERMS_PRINT3: @po_template.PT_TERMS_PRINT3, PT_TERMS_PRINT4: @po_template.PT_TERMS_PRINT4, PT_TERMS_PRINT5: @po_template.PT_TERMS_PRINT5, PT_TO1: @po_template.PT_TO1, PT_TO2: @po_template.PT_TO2, PT_TO3: @po_template.PT_TO3, PT_TO4: @po_template.PT_TO4, PT_TO5: @po_template.PT_TO5, PT_TYPE: @po_template.PT_TYPE, PT_VENDOR1: @po_template.PT_VENDOR1, PT_VENDOR2: @po_template.PT_VENDOR2, PT_VENDOR3: @po_template.PT_VENDOR3, PT_VENDOR4: @po_template.PT_VENDOR4, PT_VENDOR5: @po_template.PT_VENDOR5, PT_VENDOR_NUM: @po_template.PT_VENDOR_NUM, primaryKey: @po_template.primaryKey }
    end

    assert_redirected_to po_template_path(assigns(:po_template))
  end

  test "should show po_template" do
    get :show, id: @po_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @po_template
    assert_response :success
  end

  test "should update po_template" do
    patch :update, id: @po_template, po_template: { PT_ADDED_BY: @po_template.PT_ADDED_BY, PT_ADDED_WHEN: @po_template.PT_ADDED_WHEN, PT_APPROVAL1: @po_template.PT_APPROVAL1, PT_APPROVAL2: @po_template.PT_APPROVAL2, PT_APPROVAL3: @po_template.PT_APPROVAL3, PT_COST: @po_template.PT_COST, PT_DESC: @po_template.PT_DESC, PT_DESC_LABEL: @po_template.PT_DESC_LABEL, PT_DISCLAIMER: @po_template.PT_DISCLAIMER, PT_EDITED_BY: @po_template.PT_EDITED_BY, PT_EDITED_WHEN: @po_template.PT_EDITED_WHEN, PT_FIELD1: @po_template.PT_FIELD1, PT_FIELD2: @po_template.PT_FIELD2, PT_FIELD3: @po_template.PT_FIELD3, PT_FIELD4: @po_template.PT_FIELD4, PT_FIELD5: @po_template.PT_FIELD5, PT_FIELD_LABEL1: @po_template.PT_FIELD_LABEL1, PT_FIELD_LABEL2: @po_template.PT_FIELD_LABEL2, PT_FIELD_LABEL3: @po_template.PT_FIELD_LABEL3, PT_FIELD_LABEL4: @po_template.PT_FIELD_LABEL4, PT_FIELD_LABEL5: @po_template.PT_FIELD_LABEL5, PT_GROSS: @po_template.PT_GROSS, PT_ITEM_DESC: @po_template.PT_ITEM_DESC, PT_JOB_NUM: @po_template.PT_JOB_NUM, PT_KIND: @po_template.PT_KIND, PT_MARKUP: @po_template.PT_MARKUP, PT_PC: @po_template.PT_PC, PT_QTY: @po_template.PT_QTY, PT_QTY_LABEL: @po_template.PT_QTY_LABEL, PT_SHIP1: @po_template.PT_SHIP1, PT_SHIP2: @po_template.PT_SHIP2, PT_SHIP3: @po_template.PT_SHIP3, PT_SHIP4: @po_template.PT_SHIP4, PT_SHIP_NOTE: @po_template.PT_SHIP_NOTE, PT_TASK: @po_template.PT_TASK, PT_TAX: @po_template.PT_TAX, PT_TAX_EXEMPT: @po_template.PT_TAX_EXEMPT, PT_TEMPLATE: @po_template.PT_TEMPLATE, PT_TERMS1: @po_template.PT_TERMS1, PT_TERMS2: @po_template.PT_TERMS2, PT_TERMS3: @po_template.PT_TERMS3, PT_TERMS_CONDITIONS: @po_template.PT_TERMS_CONDITIONS, PT_TERMS_HEADER: @po_template.PT_TERMS_HEADER, PT_TERMS_PRINT1: @po_template.PT_TERMS_PRINT1, PT_TERMS_PRINT2: @po_template.PT_TERMS_PRINT2, PT_TERMS_PRINT3: @po_template.PT_TERMS_PRINT3, PT_TERMS_PRINT4: @po_template.PT_TERMS_PRINT4, PT_TERMS_PRINT5: @po_template.PT_TERMS_PRINT5, PT_TO1: @po_template.PT_TO1, PT_TO2: @po_template.PT_TO2, PT_TO3: @po_template.PT_TO3, PT_TO4: @po_template.PT_TO4, PT_TO5: @po_template.PT_TO5, PT_TYPE: @po_template.PT_TYPE, PT_VENDOR1: @po_template.PT_VENDOR1, PT_VENDOR2: @po_template.PT_VENDOR2, PT_VENDOR3: @po_template.PT_VENDOR3, PT_VENDOR4: @po_template.PT_VENDOR4, PT_VENDOR5: @po_template.PT_VENDOR5, PT_VENDOR_NUM: @po_template.PT_VENDOR_NUM, primaryKey: @po_template.primaryKey }
    assert_redirected_to po_template_path(assigns(:po_template))
  end

  test "should destroy po_template" do
    assert_difference('PoTemplate.count', -1) do
      delete :destroy, id: @po_template
    end

    assert_redirected_to po_templates_path
  end
end
