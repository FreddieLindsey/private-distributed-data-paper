import dropbox

dbx = dropbox.Dropbox(os.environ['DROPBOX_TOKEN'])

with open('./project.pdf', 'rb'):
    dbx.files_upload(f, '/Imperial/Work/301 Indiv. Proj./project.pdf')
