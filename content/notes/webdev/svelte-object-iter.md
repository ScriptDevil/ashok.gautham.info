+++
title = "Iterating through object properties in svelte"
date = 2021-05-19
+++

Svelte supports  `{#each }` directive for iterating through elements of an
array. For instance

```html
<script>
  let arr = [1,2,3,4]
</script>

<ul>
  {#each arr as elem}
  {elem}
  {/each}
</ul>

```

However, to iterate through key-value pairs in an object, one cannot simply use
`{#each obj as [k,v]}` since an object isn't directly iterable. However, one
can still achieve this using `[Object.entries]` which returns an array of a
given object's own enumerable string-keyed property `[key, value]` pairs,

For instance, to access all properties passed to an object in `$$props` ([more
about $$props]), one can do the following

```html
<dl>
{#each Object.entries($$props) as [k,v] (k)}
  <dt> {k} </dt>
  <dd> {v} </dd>
{/each}
</dl
```

## References
- [discussion on Github issues](https://github.com/sveltejs/svelte/issues/894)


[Object.entries]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/entries
[more about $$props]: https://svelte.dev/tutorial/spread-props
