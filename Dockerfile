FROM jupyter/datascience-notebook
USER root
RUN apt-get update --fix-missing
RUN apt-get install -y net-tools iputils-ping
RUN apt-get install -y libmysqlclient-dev
USER jovyan
RUN pip install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master yapf
RUN pip install autopep8 pymysql nltk pymongo google-cloud-pubsub python-dateutil pycryptodome
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable code_prettify/code_prettify
RUN jupyter nbextension enable toggle_all_line_numbers/main
RUN jupyter nbextension enable varInspector/main
RUN jupyter nbextension enable code_prettify/2to3
RUN jupyter nbextension enable autosavetime/main
RUN jupyter nbextension enable execute_time/ExecuteTime
RUN jupyter nbextension enable table_beautifier/main
RUN jupyter nbextension enable zenmode/main
RUN jupyter nbextension enable init_cell/main
RUN jupyter nbextension enable table_beautifier/main
RUN jupyter nbextension enable code_font_size/code_font_size
RUN jupyter nbextension enable highlight_selected_word/main
RUN jupyter nbextension enable tree-filter/index 
RUN jupyter nbextension enable runtools/main
RUN jupyter nbextension enable snippets/main
RUN jupyter nbextension enable autoscroll/main
RUN pip install fitbit
RUN pip install mysqlclient 
RUN pip install google-api-python-client
RUN pip install oauth2client
