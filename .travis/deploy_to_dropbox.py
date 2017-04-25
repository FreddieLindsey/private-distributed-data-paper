import os, sys
import dropbox

dbx = dropbox.Dropbox(os.environ['DROPBOX_TOKEN'])

filename = os.environ['UPLOAD_FILE']

if len(sys.argv) > 1:
    filename = sys.argv[1] + '.pdf'

with open(os.environ['UPLOAD_FILE'], 'rb') as f:
    dbx.files_upload(f.read(), '/Imperial/Work/301 Indiv. Proj./' + filename, dropbox.files.WriteMode('overwrite', None))
