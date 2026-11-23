# Keycloak Templates

Temas customizados do Keycloak para o **Modern GitOps Stack**, alinhados à identidade visual oficial da documentação (`modern-gitops-stack-antora-ui`).

## Tema `modern-gitops`

Portal de autenticação unificado construído com foco em **Showcase Centralizado**, paleta oficial Navy + Mint/Ciano Neon (`#0a192f`, `#64ffda`, `#00d4ff`, `#6356e5`) e textos em **Português (`pt-BR`)**.

### Principais Características

- **Showcase Unificado Centralizado (`1100px`)**: integra a vitrine arquitetural da stack (4 camadas: IaC & Multi-Cloud, GitOps & Service Mesh, Observabilidade, Data & MLOps) junto ao painel de login OIDC em um único container glassmorphism.
- **Identidade Visual Oficial**: reproduz o logo vetorial do pipeline isométrico em curva "S", a paleta Navy/Mint do portal Antora e ícones vetoriais reais de Kubernetes, OpenTofu, Argo CD, Istio, Grafana e Keycloak OIDC.
- **Experiência OIDC Inteligente**:
  - Exibe dinamicamente o cliente OIDC solicitante (`SSO OIDC · <client>`).
  - Oculta automaticamente a seção de SSO externo quando não há provedores configurados.
  - Adapta o grid de provedores externos (`1 coluna` para SSO corporativo único ou `2 colunas` para múltiplos provedores como GitHub/Google/GitLab).
- **Interatividade Segura (CSP-friendly)**: toggle de mostrar/ocultar senha e feedback de carregamento no envio via `js/modern-gitops.js`.
- **Retrocompatibilidade**: `template.ftl` suporta modo `fullPage=true` (`login.ftl`, `error.ftl`) e modo compacto (`fullPage=false`) para fluxos nativos do Keycloak (redefinição de senha, OTP, atualização de perfil).

### Estrutura do Tema

```
themes/
└── modern-gitops/
    └── login/
        ├── theme.properties                # parent=keycloak, styles e scripts
        ├── template.ftl                    # Layout base híbrido (showcase + fallback Keycloak)
        ├── login.ftl                       # Tela principal de login em pt-BR
        ├── error.ftl                       # Tela de diagnóstico de erro
        └── resources/
            ├── css/
            │   └── modern-gitops.css       # Design system oficial da stack
            ├── img/
            │   └── favicon.svg             # Ícone oficial do pipeline em SVG
            └── js/
                └── modern-gitops.js        # Toggle de senha e estado de carregamento
```

## Uso

### Com Keycloak Operator (Kubernetes)

O tema pode ser carregado via `initContainer` clonando este repositório:

```yaml
apiVersion: k8s.keycloak.org/v2alpha1
kind: Keycloak
metadata:
  name: keycloak
spec:
  instances: 1
  additionalOptions:
    - name: spi-theme-login-default
      value: "modern-gitops"
  unsupported:
    podTemplate:
      spec:
        initContainers:
          - name: git-clone-theme
            image: alpine/git
            securityContext:
              runAsUser: 1000
              runAsGroup: 1000
              runAsNonRoot: true
            command:
              - /bin/sh
              - -c
            args:
              - >-
                cd /tmp &&
                git clone --branch=main https://github.com/GersonRS/keycloak-templates.git &&
                cp -r keycloak-templates/themes/modern-gitops/* /theme
            volumeMounts:
              - name: theme-volume
                mountPath: /theme
        containers:
          - name: keycloak
            volumeMounts:
              - name: theme-volume
                mountPath: /opt/keycloak/themes/modern-gitops
        volumes:
          - name: theme-volume
            emptyDir: {}
```

### Com Terraform (`modern-gitops-stack-module-keycloak`)

```hcl
module "keycloak" {
  source = "github.com/GersonRS/modern-gitops-stack-module-keycloak"

  enable_custom_theme = true
  theme_config = {
    name              = "modern-gitops"
    repository_url    = "https://github.com/GersonRS/keycloak-templates.git"
    repository_branch = "main"
    repository_path   = "themes/modern-gitops"
  }
}
```

### Keycloak Standalone

Copie a pasta do tema para o diretório de temas do Keycloak:

```bash
cp -r themes/modern-gitops /opt/keycloak/themes/
```

No Admin Console:
1. Acesse **Realm Settings** > **Themes**
2. Selecione **modern-gitops** em **Login Theme**
3. Salve as alterações

## Desenvolvimento Local

Execute o Keycloak com cache de tema desabilitado para visualizar alterações em tempo real:

```bash
bin/kc.sh start-dev \
  --spi-theme-static-max-age=-1 \
  --spi-theme-cache-themes=false \
  --spi-theme-cache-templates=false
```

## Licença

Apache License 2.0
