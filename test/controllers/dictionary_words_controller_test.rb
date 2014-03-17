require 'test_helper'

class DictionaryWordsControllerTest < ActionController::TestCase
  setup do
    @dictionary_word = dictionary_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dictionary_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dictionary_word" do
    assert_difference('DictionaryWord.count') do
      post :create, dictionary_word: { DWORD_DICT_NAME: @dictionary_word.DWORD_DICT_NAME, DWORD_WORD: @dictionary_word.DWORD_WORD, primaryKey: @dictionary_word.primaryKey }
    end

    assert_redirected_to dictionary_word_path(assigns(:dictionary_word))
  end

  test "should show dictionary_word" do
    get :show, id: @dictionary_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dictionary_word
    assert_response :success
  end

  test "should update dictionary_word" do
    patch :update, id: @dictionary_word, dictionary_word: { DWORD_DICT_NAME: @dictionary_word.DWORD_DICT_NAME, DWORD_WORD: @dictionary_word.DWORD_WORD, primaryKey: @dictionary_word.primaryKey }
    assert_redirected_to dictionary_word_path(assigns(:dictionary_word))
  end

  test "should destroy dictionary_word" do
    assert_difference('DictionaryWord.count', -1) do
      delete :destroy, id: @dictionary_word
    end

    assert_redirected_to dictionary_words_path
  end
end
