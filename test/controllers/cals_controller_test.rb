require 'test_helper'

class CalsControllerTest < ActionController::TestCase
  setup do
    @cal = cals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cal" do
    assert_difference('Cal.count') do
      post :create, cal: { CL_CAL01: @cal.CL_CAL01, CL_CAL02: @cal.CL_CAL02, CL_CAL03: @cal.CL_CAL03, CL_CAL04: @cal.CL_CAL04, CL_CAL05: @cal.CL_CAL05, CL_CAL06: @cal.CL_CAL06, CL_CAL07: @cal.CL_CAL07, CL_CAL08: @cal.CL_CAL08, CL_CAL09: @cal.CL_CAL09, CL_CAL10: @cal.CL_CAL10, CL_CAL11: @cal.CL_CAL11, CL_CAL12: @cal.CL_CAL12, CL_CAL13: @cal.CL_CAL13, CL_CAL14: @cal.CL_CAL14, CL_CAL15: @cal.CL_CAL15, CL_CAL16: @cal.CL_CAL16, CL_CAL17: @cal.CL_CAL17, CL_CAL18: @cal.CL_CAL18, CL_CAL19: @cal.CL_CAL19, CL_CAL20: @cal.CL_CAL20, CL_CAL21: @cal.CL_CAL21, CL_CAL22: @cal.CL_CAL22, CL_CAL23: @cal.CL_CAL23, CL_CAL24: @cal.CL_CAL24, CL_CAL25: @cal.CL_CAL25, CL_CAL26: @cal.CL_CAL26, CL_CAL27: @cal.CL_CAL27, CL_CAL28: @cal.CL_CAL28, CL_CAL29: @cal.CL_CAL29, CL_CAL30: @cal.CL_CAL30, CL_CAL31: @cal.CL_CAL31, CL_CAL32: @cal.CL_CAL32, CL_CAL33: @cal.CL_CAL33, CL_CAL34: @cal.CL_CAL34, CL_CAL35: @cal.CL_CAL35, CL_CAL36: @cal.CL_CAL36, CL_CAL37: @cal.CL_CAL37, CL_CAL38: @cal.CL_CAL38, CL_CAL39: @cal.CL_CAL39, CL_CAL40: @cal.CL_CAL40, CL_CAL41: @cal.CL_CAL41, CL_CAL42: @cal.CL_CAL42, CL_DAY01: @cal.CL_DAY01, CL_DAY02: @cal.CL_DAY02, CL_DAY03: @cal.CL_DAY03, CL_DAY04: @cal.CL_DAY04, CL_DAY05: @cal.CL_DAY05, CL_DAY06: @cal.CL_DAY06, CL_DAY07: @cal.CL_DAY07, CL_DAY08: @cal.CL_DAY08, CL_DAY09: @cal.CL_DAY09, CL_DAY10: @cal.CL_DAY10, CL_DAY11: @cal.CL_DAY11, CL_DAY12: @cal.CL_DAY12, CL_DAY13: @cal.CL_DAY13, CL_DAY14: @cal.CL_DAY14, CL_DAY15: @cal.CL_DAY15, CL_DAY16: @cal.CL_DAY16, CL_DAY17: @cal.CL_DAY17, CL_DAY18: @cal.CL_DAY18, CL_DAY19: @cal.CL_DAY19, CL_DAY20: @cal.CL_DAY20, CL_DAY21: @cal.CL_DAY21, CL_DAY22: @cal.CL_DAY22, CL_DAY23: @cal.CL_DAY23, CL_DAY24: @cal.CL_DAY24, CL_DAY25: @cal.CL_DAY25, CL_DAY26: @cal.CL_DAY26, CL_DAY27: @cal.CL_DAY27, CL_DAY28: @cal.CL_DAY28, CL_DAY29: @cal.CL_DAY29, CL_DAY30: @cal.CL_DAY30, CL_DAY31: @cal.CL_DAY31, CL_DAY32: @cal.CL_DAY32, CL_DAY33: @cal.CL_DAY33, CL_DAY34: @cal.CL_DAY34, CL_DAY35: @cal.CL_DAY35, CL_DAY36: @cal.CL_DAY36, CL_DAY37: @cal.CL_DAY37, CL_DAY38: @cal.CL_DAY38, CL_DAY39: @cal.CL_DAY39, CL_DAY40: @cal.CL_DAY40, CL_DAY41: @cal.CL_DAY41, CL_DAY42: @cal.CL_DAY42, CL_MONTH: @cal.CL_MONTH, CL_YEAR: @cal.CL_YEAR, primaryKey: @cal.primaryKey }
    end

    assert_redirected_to cal_path(assigns(:cal))
  end

  test "should show cal" do
    get :show, id: @cal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cal
    assert_response :success
  end

  test "should update cal" do
    patch :update, id: @cal, cal: { CL_CAL01: @cal.CL_CAL01, CL_CAL02: @cal.CL_CAL02, CL_CAL03: @cal.CL_CAL03, CL_CAL04: @cal.CL_CAL04, CL_CAL05: @cal.CL_CAL05, CL_CAL06: @cal.CL_CAL06, CL_CAL07: @cal.CL_CAL07, CL_CAL08: @cal.CL_CAL08, CL_CAL09: @cal.CL_CAL09, CL_CAL10: @cal.CL_CAL10, CL_CAL11: @cal.CL_CAL11, CL_CAL12: @cal.CL_CAL12, CL_CAL13: @cal.CL_CAL13, CL_CAL14: @cal.CL_CAL14, CL_CAL15: @cal.CL_CAL15, CL_CAL16: @cal.CL_CAL16, CL_CAL17: @cal.CL_CAL17, CL_CAL18: @cal.CL_CAL18, CL_CAL19: @cal.CL_CAL19, CL_CAL20: @cal.CL_CAL20, CL_CAL21: @cal.CL_CAL21, CL_CAL22: @cal.CL_CAL22, CL_CAL23: @cal.CL_CAL23, CL_CAL24: @cal.CL_CAL24, CL_CAL25: @cal.CL_CAL25, CL_CAL26: @cal.CL_CAL26, CL_CAL27: @cal.CL_CAL27, CL_CAL28: @cal.CL_CAL28, CL_CAL29: @cal.CL_CAL29, CL_CAL30: @cal.CL_CAL30, CL_CAL31: @cal.CL_CAL31, CL_CAL32: @cal.CL_CAL32, CL_CAL33: @cal.CL_CAL33, CL_CAL34: @cal.CL_CAL34, CL_CAL35: @cal.CL_CAL35, CL_CAL36: @cal.CL_CAL36, CL_CAL37: @cal.CL_CAL37, CL_CAL38: @cal.CL_CAL38, CL_CAL39: @cal.CL_CAL39, CL_CAL40: @cal.CL_CAL40, CL_CAL41: @cal.CL_CAL41, CL_CAL42: @cal.CL_CAL42, CL_DAY01: @cal.CL_DAY01, CL_DAY02: @cal.CL_DAY02, CL_DAY03: @cal.CL_DAY03, CL_DAY04: @cal.CL_DAY04, CL_DAY05: @cal.CL_DAY05, CL_DAY06: @cal.CL_DAY06, CL_DAY07: @cal.CL_DAY07, CL_DAY08: @cal.CL_DAY08, CL_DAY09: @cal.CL_DAY09, CL_DAY10: @cal.CL_DAY10, CL_DAY11: @cal.CL_DAY11, CL_DAY12: @cal.CL_DAY12, CL_DAY13: @cal.CL_DAY13, CL_DAY14: @cal.CL_DAY14, CL_DAY15: @cal.CL_DAY15, CL_DAY16: @cal.CL_DAY16, CL_DAY17: @cal.CL_DAY17, CL_DAY18: @cal.CL_DAY18, CL_DAY19: @cal.CL_DAY19, CL_DAY20: @cal.CL_DAY20, CL_DAY21: @cal.CL_DAY21, CL_DAY22: @cal.CL_DAY22, CL_DAY23: @cal.CL_DAY23, CL_DAY24: @cal.CL_DAY24, CL_DAY25: @cal.CL_DAY25, CL_DAY26: @cal.CL_DAY26, CL_DAY27: @cal.CL_DAY27, CL_DAY28: @cal.CL_DAY28, CL_DAY29: @cal.CL_DAY29, CL_DAY30: @cal.CL_DAY30, CL_DAY31: @cal.CL_DAY31, CL_DAY32: @cal.CL_DAY32, CL_DAY33: @cal.CL_DAY33, CL_DAY34: @cal.CL_DAY34, CL_DAY35: @cal.CL_DAY35, CL_DAY36: @cal.CL_DAY36, CL_DAY37: @cal.CL_DAY37, CL_DAY38: @cal.CL_DAY38, CL_DAY39: @cal.CL_DAY39, CL_DAY40: @cal.CL_DAY40, CL_DAY41: @cal.CL_DAY41, CL_DAY42: @cal.CL_DAY42, CL_MONTH: @cal.CL_MONTH, CL_YEAR: @cal.CL_YEAR, primaryKey: @cal.primaryKey }
    assert_redirected_to cal_path(assigns(:cal))
  end

  test "should destroy cal" do
    assert_difference('Cal.count', -1) do
      delete :destroy, id: @cal
    end

    assert_redirected_to cals_path
  end
end
