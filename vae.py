import numpy as np
import tensorflow as tf

class VAE():
    def __init__(self, latent_dimensions = 10):
        self.latent_dim = latent_dimensions


                 # latent_dimensions=10,
                 # num_epochs=10,
                 # learning_rate=1e-3,
                 # num_epochs_to_decay_lr=0,
                 # num_train=50000,
                 # batch_size=50,
                 # save_epochs=50):
