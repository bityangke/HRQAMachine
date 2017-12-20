import os, sys
import json, re
import torch
import numpy as np
from data_loader import DataLoader
from story_loader import StoryLoader
import torch.utils.data as data
from PIL import Image
from numpy.random import randint
import torchvision.transforms as transforms

class MQADataset(data.Dataset):
    def __init__(data_loader, story_loader, vocab_file='./data/vocab.txt'):

    

    def __getitem__(self, index):
        raise NotImplementedError

    def __len__(self):
        raise NotImplementedError