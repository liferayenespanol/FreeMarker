<#if entries?has_content>
	<#list entries as entry>
			<#assign categorias = entry.getCategories()>
			
			<@listaCategorias categorias=categorias />
	</#list>
</#if>

<#macro listaCategorias
	categorias
>
	<#if categorias?has_content>
		<#list categorias as categoria>
			<ul>
				<li>
					<#assign categoriaURL = renderResponse.createRenderURL()>

					${categoriaURL.setParameter("resetCur", "true")}
					${categoriaURL.setParameter("categoryId", categoria.getCategoryId()?string)}

					<a href="${categoriaURL}">${categoria.getName()}</a>
				</li>
			</ul>
		</#list>
	</#if>
</#macro>