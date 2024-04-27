## Github Actions

Github Actions merupakan layanan CI/CD yang disediakan oleh Github. Github Actions memungkinkan kita untuk membuat workflow yang dapat dijalankan ketika terjadi perubahan pada repository. Dokumentasi dari Github Actions dapat diakses [di sini](https://docs.github.com/en/actions/).

Github Actions terdiri dari beberapa komponen sebagai berikut.

1. Workflows
   Workflow adalah kumpulan dari beberapa job yang dijalankan secara bersamaan atau berurutan. Workflow disimpan dalam file YAML pada direktori `.github/workflows/` di repository.

2. Events
   Events adalah trigger yang menyebabkan workflow dijalankan. Beberapa contoh events adalah push, pull request, dan issue.

3. Jobs
   Jobs adalah kumpulan dari beberapa step yang dijalankan secara bersamaan pada runner yang sama. Jobs dapat dijalankan secara bersamaan atau berurutan.

4. Actions
   Actions adalah perintah yang dijalankan pada runner. Actions dapat berupa perintah bash, perintah npm, atau action yang telah dibuat oleh pengguna. Actions dapat dibuat sendiri atau menggunakan action yang telah dibuat oleh pengguna lain.

5. Runners
   Runners adalah mesin yang menjalankan workflow. Runner dapat berupa runner yang disediakan oleh Github atau runner yang dihosting sendiri.

> Bagaimana cara membuat workflow pada Github Actions?

Berikut contoh cara membuat workflow pada Github Actions.

1. Buat file `check-version.yml` pada direktori `.github/workflows/` di repository.

2. Isi file dengan kode berikut.

   ```yaml
   name: check-version
   run-name: ${{ github.actor }} is learning GitHub Actions
   on: [push]
   jobs:
   check-bats-version:
     runs-on: ubuntu-latest
     steps:
       - uses: actions/checkout@v4
       - uses: actions/setup-node@v4
         with:
           node-version: "20"
       - run: npm install -g bats
       - run: bats -v
   ```

3. Push file ke repository.

4. Buka tab Actions pada repository.

### Expressions

Expression adalah cara untuk mengakses konteks pada workflow. Untuk menggunakan expression diperlukan sintaks berikut `${{ <expression> }}`. Berikut adalah beberapa contoh expression yang sering digunakan.

1. Literals
   - `${{ null }}`
   - `${{ true }}`
   - `${{ 2.78 }}`
2. Operators
   - `${{ 1 + 1 }}`
   - `${{ 2 > 1 }}`
   - `${{ 2 == 2 }}`
3. Context
   - `${{ github.actor }}`
   - `${{ github.repository }}`
   - `${{ github.event_name }}`
4. Functions
   - `${{ format('Hello, {0}', github.actor) }}`
   - `${{ toJson(github) }}`
   - `${{ steps.<step_id>.outputs.<output_name> }}`

### Variables

Variable adalah cara untuk menyimpan nilai yang dapat digunakan pada workflow. Variable dapat ditambahkan langsung pada file workflow atau dari Github Secrets. Berikut adalah contoh deklarasi variable pada workflow.

```yaml
name: Variable

on: [push]

env:
  DAY_OF_WEEK: Monday

jobs:
  greeting_job:
    runs-on: ubuntu-latest
    env:
      Greeting: Hello
    steps:
      - name: "Say Hello Mona it's Monday"
        if: ${{ env.DAY_OF_WEEK == 'Monday' }}
        run: echo "$Greeting $First_Name. Today is $DAY_OF_WEEK!"
        env:
          First_Name: Mona
```

Untuk menambahkan secrets atau variables dalam repository, dapat dilakukan dengan cara berikut.

![secrets](assets/secrets.png)

Secrets atau variables yang ditambahkan dapat diakses seperti pada contoh berikut.

```yaml
name: Variable

on: [push]

env:
  DAY_OF_WEEK: ${{ secrets.DAY_OF_WEEK }}

jobs:
  greeting_job:
    runs-on: ubuntu-latest
    env:
      Greeting: Hello
    steps:
      - name: "Say Hello Mona it's Monday"
        if: ${{ env.DAY_OF_WEEK == 'Monday' }}
        run: echo "$Greeting $First_Name. Today is $DAY_OF_WEEK!"
        env:
          First_Name: Mona
```