require 'spec_helper'
require_relative '../lib/config'

describe And::Config do
  it 'works' do
    expect(subject).to be_instance_of(And::Config)
  end

  it 'loads paths' do
    path = "#{Dir.home}/Library/Mobile\ Documents/com~apple~CloudDocs/VOLT/volt_ia/and"
    expect(subject.file_path).to eq(path)
  end

  it 'parent_paths' do
    expect(subject.top_level).to eq(1)
  end

  it 'load files in a directory' do
    expect(subject.load_files.class).to eq(Array)
    expect(subject.load_file[0].keys).to eq([:title, :body])
  end
end