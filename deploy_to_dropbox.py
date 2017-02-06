import os
import dropbox

dbx = dropbox.Dropbox(os.environ['DROPBOX_TOKEN'])

files_to_upload = ['project.pdf', 'interim.pdf']

for filename in files_to_upload:
    with open(filename, 'rb') as f:
        dbx.files_upload(f.read(), '/Imperial/Work/301 Indiv. Proj./' + filename, dropbox.files.WriteMode('overwrite', None))
