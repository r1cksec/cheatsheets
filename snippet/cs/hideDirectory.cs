using System.IO;

DirectoryInfo directoryInfo = new DirectoryInfo("C:\\path\\to\\dir");
directoryInfo.Attributes |= FileAttributes.Hidden;

