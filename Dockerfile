FROM tjhei/aspect-jupyter

USER root

COPY Notebook/* /home/$NB_USER/

COPY ModelInput /home/$NB_USER/aspect/model_input

RUN chown $NB_USER:users /home/$NB_USER/ASPECT_Jupyter.ipynb

USER $USER

RUN jupyter trust /home/$USER/*.ipynb
