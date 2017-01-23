import os
import dropbox

dbx = dropbox.Dropbox(os.environ['DROPBOX_TOKEN'])

with open('./project.pdf', 'rb') as f:
    dbx.files_upload(f.read(), '/Imperial/Work/301 Indiv. Proj./project.pdf', dropbox.files.WriteMode('overwrite', None))
