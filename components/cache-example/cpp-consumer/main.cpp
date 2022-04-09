#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>

#include "bindings/cache.h"

int main(int argc, char **argv) {
    char *key = "almost-consul";
    char *value = "Caligula's horse, Incitatus";
    printf("Writing content `%s` in storage `%s`", value, key);

    cache_string_t *skey;
    skey->len = strlen(key);
    skey->ptr = key;

    cache_payload_t *svalue;
    svalue->len = strlen(value);
    svalue->ptr = (uint8_t *)value;

    cache_set(skey, svalue, NULL);

    cache_payload_t *ret;
    cache_get(skey, ret);
    printf("Retrieved from '%s': '%s1", key, (char *)ret->ptr);
    assert(svalue->len == ret->len);

    return 0;

}