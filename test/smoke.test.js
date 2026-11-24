import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const root = path.dirname(fileURLToPath(import.meta.url));
const proj = path.join(root, '..');

test('project smoke: critical files exist', () => {
  const need = ["index.html", "package.json"];
  for (const rel of need) {
    const p = path.join(proj, rel);
    assert.ok(fs.existsSync(p), `missing ${rel}`);
  }
});

test('package.json has name', () => {
  const pkg = JSON.parse(fs.readFileSync(path.join(proj, 'package.json'), 'utf8'));
  assert.ok(pkg.name);
});
