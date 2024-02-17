import argparse
from argparse import RawTextHelpFormatter

# define and configure the passed arguments
argumentParser = argparse.ArgumentParser(description="""Some description ...
\n\n
...
\n\n
End of description
""", formatter_class=RawTextHelpFormatter)

requiredArgs = argumentParser.add_mutually_exclusive_group(required=True)

argumentParser.add_argument("-o", "--output", dest="output",
                            help = "path to output",
                            required = "true")

requiredArgs.add_argument("-xf", "--xmlFile", dest = "xmlFile",
                            help = "path to xml nmap file")

argumentParser.add_argument("-v", "--verbose", dest = "verbose",
                            help = "set verbose option",
                            action = "store_true")

argumentParser.add_argument("-t", "--timeout", dest="timeout",
                            help = "maximal time that...",
                            default = "600")

args = argumentParser.parse_args()

# print verbose
if (args.verbose):
    print("Print verbose")

