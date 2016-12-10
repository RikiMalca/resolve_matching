#!/bin/bash

make
cd src/tagger
make
cd ../parser
make
cd ../tagger
g++  -g -O2   -o TurboTagger SequenceFeatures.o SequenceInstanceNumeric.o SequenceWriter.o SequenceDecoder.o SequencePipe.o SequenceOptions.o TokenDictionary.o SequenceDictionary.o SequenceInstance.o SequenceReader.o SequencePart.o TurboTagger.o Alphabet.o Dictionary.o Reader.o Parameters.o Pipe.o Writer.o Options.o AlgUtils.o SerializationUtils.o StringUtils.o TimeUtils.o ../parser/DependencyInstance.o ../parser/DependencyReader.o ../parser/DependencyWriter.o ../parser/DependencyDecoder.o ../parser/DependencyPipe.o ../parser/DependencyPart.o ../parser/DependencyOptions.o ../parser/DependencyFeatures.o ../parser/DependencyDictionary.o ../parser/DependencyInstanceNumeric.o -L../../deps/local/lib -lad3 -lgflags -lglog

