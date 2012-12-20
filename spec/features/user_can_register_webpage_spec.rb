# coding: utf-8
require 'spec_helper'

feature 'ユーザーとしてウェブページを登録できる' do
  scenario 'トップページからウェブページを登録できる' do
    title = 'ほげほげ'
    description = 'これはテストですよ？'

    visit webpages_path

    fill_in 'Title', with: title
    fill_in 'Url', with: 'http://example.com'
    fill_in 'Description', with: description
    click_button 'Register'

    current_path.should == webpage_path(Webpage.last)
    page.should have_content title
    page.should have_content description
  end
end
