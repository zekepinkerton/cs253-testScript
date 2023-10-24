#include <stdio.h>

/** !
 * Prevents errors in calls to scanf
 * 
 * @param scanfReturn put a scanf call here
 * 
 * @return -1 on error, scanf return on success
 */
int EatInput ( int scanfReturn ) {

    char c = 0;

    if ( scanfReturn == 0 || scanfReturn == EOF ) {
        return -1;
    }

    c = getchar();

    while ( c != '\n' && c != EOF ) {
        c = getchar();
    }

    return scanfReturn;
}

// Entry point
int main ( int argc, const char *argv[] )
{

    // Initialized data
    char myStr[50] = { 0 };

    // Example
    if ( EatInput(scanf("%[^\n]50", myStr)) == -1 ) {
        
        // Error
        return 1;
    }
    
    // Success
    return 0; 
}