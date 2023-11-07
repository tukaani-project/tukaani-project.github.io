<h1>Old versions of XZ Utils</h1>
<hr>

<p>
	Releases 5.2.10 and newer point to the
	<a href="https://github.com/tukaani-project/xz/releases">GitHub releases</a>
	directly. Older releases are hosted on this site.
</p>

<h2>Source Releases</h2>
<div class="dark-block">
	<table class="table-alternating">
		{% for release in xz_utils_releases.releases offset:1 %}
		<tr>
			<th colspan="3">
				{{ release.name }}
			</th>
		</tr>

		{% for tarball in release.tarballs %}
		<tr>
			<td>
				{% if tarball.is_url_local %}
				<a href="{{ topdir }}/{{ tarball.tarball_url }}">xz-{{ release.name }}.tar.{{
					tarball.type }}</a>
				{% else %}
				<a href="{{ tarball.tarball_url }}">xz-{{ release.name }}.tar.{{ tarball.type
					}}</a>
				{% endif %}
			</td>
			<td>
				Size: {{ tarball.size }}
			</td>
			<td>

				{% if tarball.sig_url %}
				{% if tarball.is_url_local %}
				<a href="{{ topdir }}/{{ tarball.sig_url }}">signature</a>
				{% else %}
				<a href="{{ tarball.sig_url }}">signature</a>
				{% endif %}
				{% endif %}
			</td>
		</tr>
		{% endfor %}

		{% if forloop.index != forloop.length %}
		<tr class="table-row-hide">
			<td colspan="3"></td>
		</tr>
		{% endif %}

		{% endfor %}
	</table>
</div>

<h2>Binary Releases</h2>

<div class="dark-block">

	<h3>Windows</h3>

	<br>

	<table class="table-alternating">
		{% for release in xz_utils_windows_releases.releases offset:1 %}
		<tr>
			<th colspan="3">
				{{ release.name }}
			</th>
		</tr>

		{% for archive in release.archives %}
		<tr>
			<td>
				<a href="{{ topdir }}/{{ archive.archive_url }}">xz-{{ release.name
					}}-windows.{{ archive.type }}</a>
			</td>
			<td>
				Size: {{ archive.size }}
			</td>
			<td>

				{% if archive.sig_url %}
				<a href="{{ topdir }}/{{ archive.sig_url }}">signature</a>
				{% endif %}
			</td>
		</tr>
		{% endfor %}

		{% if forloop.index != forloop.length %}
		<tr class="table-row-hide">
			<td colspan="3"></td>
		</tr>
		{% endif %}

		{% endfor %}
	</table>
</div>


<div class="border-block">

	<h3>DOS</h3>

	<br>

	<table class="table-alternating">
		{% for release in xz_utils_dos_releases.releases offset:1 %}
		<tr>
			<th colspan="3">
				{{ release.name }}
			</th>
		</tr>

		{% for archive in release.archives %}
		<tr>
			<td>
				<a href="{{ topdir }}/{{ archive.archive_url }}">xz-{{ release.name }}-dos.{{
					archive.type }}</a>
			</td>
			<td>
				Size: {{ archive.size }}
			</td>
			<td>

				{% if archive.sig_url %}
				<a href="{{ topdir }}/{{ archive.sig_url }}">signature</a>
				{% endif %}
			</td>
		</tr>
		{% endfor %}

		{% if forloop.index != forloop.length %}
		<tr class="table-row-hide">
			<td colspan="3"></td>
		</tr>
		{% endif %}

		{% endfor %}
	</table>

	<p>
		The DOS versions of XZ Utils up to and including 5.2.1 include some
		copylefted code from DJGPP 2.04beta and CWSDPMI r7. The relevant source
		code is available from their home pages, and copies are also available
		below.
	</p>

	<ul>
		<li>
			<a href="{{ topdir }}/xz-utils/files/djlsr204.zip">djlsr204.zip</a> (1880 KiB)
		</li>
		<li>
			<a href="{{ topdir }}/xz-utils/files/djtst204.zip">djtst204.zip</a> (963 KiB)
		</li>
		<li>
			<a href="{{ topdir }}/xz-utils/files/csdpmi7s.zip">csdpmi7s.zip</a> (88 KiB)
		</li>
</div>
