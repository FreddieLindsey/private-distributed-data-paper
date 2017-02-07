import os
import dropbox

dbx = dropbox.Dropbox(os.environ['DROPBOX_TOKEN'])

filename = os.environ['UPLOAD_FILE']

with open(filename, 'rb') as f:
    dbx.files_upload(f.read(), '/Imperial/Work/301 Indiv. Proj./' + filename, dropbox.files.WriteMode('overwrite', None))
