<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled?? fullPage=true>
    <main class="mg-viewport">
        <!-- Atmosfera luminosa centralizada -->
        <div class="mg-backdrop" aria-hidden="true">
            <div class="mg-grid-mesh"></div>
            <div class="mg-glow mg-glow--mint"></div>
            <div class="mg-glow mg-glow--indigo"></div>
            <div class="mg-glow mg-glow--cyan"></div>
        </div>

        <!-- Container Unificado Centralizado -->
        <section class="mg-shell" aria-label="Portal de Autenticação Modern GitOps Stack">
            <!-- Coluna Esquerda: Vitrine da Stack -->
            <div class="mg-showcase">
                <!-- Cabeçalho da Marca -->
                <div class="mg-brand-bar">
                    <div class="mg-brand-identity">
                        <svg class="mg-pipeline-logo" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                            <defs>
                                <linearGradient id="mgLogoPipeGrad" x1="8" y1="8" x2="54" y2="54" gradientUnits="userSpaceOnUse">
                                    <stop offset="0%" stop-color="#64ffda"/>
                                    <stop offset="100%" stop-color="#00d4ff"/>
                                </linearGradient>
                            </defs>
                            <path d="M46 11L21 15.5C14.5 16.8 12.5 23 19 25.8L41 33.5C47.5 36 46.5 44.5 38 46.8L22 50" stroke="url(#mgLogoPipeGrad)" stroke-width="9.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M46 11L21 15.5C14.5 16.8 12.5 23 19 25.8L41 33.5C47.5 36 46.5 44.5 38 46.8L22 50" stroke="#0a192f" stroke-opacity="0.45" stroke-width="1.5" stroke-dasharray="1 7" stroke-linecap="round"/>
                            <circle cx="19" cy="46.5" r="11" fill="url(#mgLogoPipeGrad)" stroke="#0a192f" stroke-width="1.5"/>
                            <circle cx="19" cy="46.5" r="5.2" fill="#0a192f"/>
                            <circle cx="19" cy="38.3" r="0.9" fill="#0a192f"/>
                            <circle cx="24.8" cy="40.7" r="0.9" fill="#0a192f"/>
                            <circle cx="27.2" cy="46.5" r="0.9" fill="#0a192f"/>
                            <circle cx="24.8" cy="52.3" r="0.9" fill="#0a192f"/>
                            <circle cx="19" cy="54.7" r="0.9" fill="#0a192f"/>
                            <circle cx="13.2" cy="52.3" r="0.9" fill="#0a192f"/>
                            <circle cx="10.8" cy="46.5" r="0.9" fill="#0a192f"/>
                            <circle cx="13.2" cy="40.7" r="0.9" fill="#0a192f"/>
                        </svg>
                        <div class="mg-brand-wordmark">
                            <span class="mg-brand-title">MODERN <span class="mg-brand-accent">GITOPS</span></span>
                            <span class="mg-brand-sub">STACK</span>
                        </div>
                    </div>

                    <span class="mg-live-pill">
                        <span class="mg-live-dot" aria-hidden="true"></span>
                        GitOps &amp; MLOps
                    </span>
                </div>

                <!-- Hero -->
                <div class="mg-hero">
                    <h1 class="mg-hero-title">
                        Plataforma Kubernetes<br>
                        <span class="mg-gradient-text">GitOps, Dados &amp; MLOps</span><br>
                        Pronta para Produção
                    </h1>
                    <p class="mg-hero-desc">
                        Provisionamento declarativo como código, entrega contínua automatizada, observabilidade unificada e ecossistema completo de Engenharia de Dados e IA — padronizados em qualquer nuvem.
                    </p>
                </div>

                <!-- Blueprint Vivo das 4 Camadas -->
                <div class="mg-blueprint">
                    <div class="mg-blueprint-head">
                        <span class="mg-blueprint-label">ARQUITETURA DA PLATAFORMA</span>
                        <span class="mg-blueprint-status">
                            <span class="mg-status-pulse" aria-hidden="true"></span>
                            4 camadas ativas
                        </span>
                    </div>

                    <div class="mg-layer-grid">
                        <div class="mg-layer-card mg-layer-card--indigo">
                            <div class="mg-layer-icon" aria-hidden="true">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                    <polygon points="12 2 2 7 12 12 22 7 12 2"/>
                                    <polyline points="2 12 12 17 22 12"/>
                                    <polyline points="2 17 12 22 22 17"/>
                                </svg>
                            </div>
                            <div class="mg-layer-body">
                                <h2 class="mg-layer-title">IaC &amp; Multi-Cloud</h2>
                                <p class="mg-layer-tools">OpenTofu · EKS · AKS · GKE · KinD</p>
                            </div>
                        </div>

                        <div class="mg-layer-card mg-layer-card--mint">
                            <div class="mg-layer-icon" aria-hidden="true">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                    <circle cx="18" cy="18" r="3"/>
                                    <circle cx="6" cy="6" r="3"/>
                                    <path d="M13 6h3a2 2 0 0 1 2 2v7"/>
                                    <line x1="6" y1="9" x2="6" y2="21"/>
                                </svg>
                            </div>
                            <div class="mg-layer-body">
                                <h2 class="mg-layer-title">GitOps &amp; Service Mesh</h2>
                                <p class="mg-layer-tools">Argo CD · Istio Ambient · Cert-Mgr</p>
                            </div>
                        </div>

                        <div class="mg-layer-card mg-layer-card--cyan">
                            <div class="mg-layer-icon" aria-hidden="true">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                    <polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/>
                                </svg>
                            </div>
                            <div class="mg-layer-body">
                                <h2 class="mg-layer-title">Observabilidade</h2>
                                <p class="mg-layer-tools">Prometheus · Thanos · Loki · Kiali</p>
                            </div>
                        </div>

                        <div class="mg-layer-card mg-layer-card--teal">
                            <div class="mg-layer-icon" aria-hidden="true">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                    <ellipse cx="12" cy="5" rx="9" ry="3"/>
                                    <path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"/>
                                    <path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"/>
                                </svg>
                            </div>
                            <div class="mg-layer-body">
                                <h2 class="mg-layer-title">Data &amp; MLOps</h2>
                                <p class="mg-layer-tools">Kafka · Spark · Trino · Jupyter · MLflow</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Ecossistema Cloud-Native -->
                <div class="mg-ecosystem">
                    <span class="mg-ecosystem-label">ECOSSISTEMA CLOUD-NATIVE</span>
                    <div class="mg-tech-chips">
                        <span class="mg-tech-chip">
                            <svg class="mg-tech-svg mg-tech-svg--k8s" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7" aria-hidden="true">
                                <polygon points="12 2.5 19.5 6.2 21.5 14.3 16.3 20.8 7.7 20.8 2.5 14.3 4.5 6.2"/>
                                <circle cx="12" cy="12" r="2.7"/>
                                <path d="M12 2.5v6.8M19.5 6.2l-5.2 4.1M21.5 14.3l-6.8-1.5M16.3 20.8l-3-6.2M7.7 20.8l3-6.2M2.5 14.3l6.8-1.5M4.5 6.2l5.2 4.1"/>
                            </svg>
                            Kubernetes
                        </span>

                        <span class="mg-tech-chip">
                            <svg class="mg-tech-svg mg-tech-svg--tofu" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true">
                                <path d="M8.8 3.2v6.1l5.3 3.1V6.3L8.8 3.2zm6.1 3.1v6.1l5.3-3.1V3.2l-5.3 3.1zm0 7v6.1l5.3-3.1v-6.1l-5.3 3.1zM2.7 6.8v6.1L8 16v-6.1L2.7 6.8z"/>
                            </svg>
                            OpenTofu
                        </span>

                        <span class="mg-tech-chip">
                            <svg class="mg-tech-svg mg-tech-svg--argo" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                <path d="M12 3a6 6 0 0 0-6 6v4l-2 3v2h16v-2l-2-3V9a6 6 0 0 0-6-6Z"/>
                                <circle cx="9.5" cy="10" r="1" fill="currentColor"/>
                                <circle cx="14.5" cy="10" r="1" fill="currentColor"/>
                                <path d="M9 18v3M15 18v3"/>
                            </svg>
                            Argo CD
                        </span>

                        <span class="mg-tech-chip">
                            <svg class="mg-tech-svg mg-tech-svg--istio" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true">
                                <path d="M12 2L5 15.5h7V2zm1.5 4.2v9.3H19L13.5 6.2zM5 17.5l7 4.5 7-4.5H5z"/>
                            </svg>
                            Istio
                        </span>

                        <span class="mg-tech-chip">
                            <svg class="mg-tech-svg mg-tech-svg--grafana" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                <path d="M12 20a6.5 6.5 0 0 1-6.5-6.5c0-3.2 2.2-5.7 5.2-6.4-.3 1.4.2 2.7 1.3 3.4 0-2.1 1.4-4.2 3.3-5.2-.2 1.7.7 3.1 2.2 3.9A6.5 6.5 0 0 1 12 20z"/>
                                <circle cx="12" cy="14" r="2"/>
                            </svg>
                            Grafana
                        </span>

                        <span class="mg-tech-chip">
                            <svg class="mg-tech-svg mg-tech-svg--oidc" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
                                <circle cx="12" cy="10.5" r="2"/>
                                <path d="M12 12.5v3"/>
                            </svg>
                            Keycloak OIDC
                        </span>
                    </div>
                </div>
            </div>

            <!-- Coluna Direita: Portal de Autenticação -->
            <div class="mg-auth-panel">
                <!-- Logo compacto apenas em mobile/tablet -->
                <div class="mg-mobile-brand">
                    <svg class="mg-pipeline-logo" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                        <defs>
                            <linearGradient id="mgMobPipeGrad" x1="8" y1="8" x2="54" y2="54" gradientUnits="userSpaceOnUse">
                                <stop offset="0%" stop-color="#64ffda"/>
                                <stop offset="100%" stop-color="#00d4ff"/>
                            </linearGradient>
                        </defs>
                        <path d="M46 11L21 15.5C14.5 16.8 12.5 23 19 25.8L41 33.5C47.5 36 46.5 44.5 38 46.8L22 50" stroke="url(#mgMobPipeGrad)" stroke-width="9.5" stroke-linecap="round" stroke-linejoin="round"/>
                        <circle cx="19" cy="46.5" r="11" fill="url(#mgMobPipeGrad)" stroke="#0a192f" stroke-width="1.5"/>
                        <circle cx="19" cy="46.5" r="5.2" fill="#0a192f"/>
                    </svg>
                    <div class="mg-brand-wordmark">
                        <span class="mg-brand-title">MODERN <span class="mg-brand-accent">GITOPS</span></span>
                        <span class="mg-brand-sub">STACK</span>
                    </div>
                </div>

                <!-- Badge dinâmico do cliente OIDC -->
                <div class="mg-auth-top">
                    <span class="mg-sso-badge">
                        <span class="mg-sso-dot" aria-hidden="true"></span>
                        <#if client?? && client.name?has_content && !client.name?starts_with("$")>
                            SSO OIDC · ${client.name}
                        <#elseif client?? && client.clientId?has_content>
                            SSO OIDC · ${client.clientId}
                        <#else>
                            SSO OIDC · ${(realm.displayName!'Modern GitOps Stack')}
                        </#if>
                    </span>
                </div>

                <!-- Cabeçalho do Login -->
                <div class="mg-auth-header">
                    <h2 class="mg-auth-title">Bem-vindo de volta</h2>
                    <p class="mg-auth-subtitle">Autentique-se para acessar os painéis e serviços do cluster</p>
                </div>

                <!-- Barra Terminal Compacta -->
                <div class="mg-terminal-bar" aria-hidden="true">
                    <div class="mg-terminal-dots">
                        <span></span><span></span><span></span>
                    </div>
                    <div class="mg-terminal-cmd">
                        <span class="mg-terminal-prompt">&#10095;</span>
                        <span>auth login --realm ${(realm.name!'modern-gitops-stack')}</span>
                        <span class="mg-terminal-cursor">_</span>
                    </div>
                </div>

                <!-- Alerta global de mensagens -->
                <#if message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                    <div class="mg-alert mg-alert--${message.type}" role="alert">
                        <svg class="mg-alert-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                            <#if message.type == 'success'>
                                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/>
                                <polyline points="22 4 12 14.01 9 11.01"/>
                            <#elseif message.type == 'warning'>
                                <path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/>
                                <line x1="12" y1="9" x2="12" y2="13"/>
                                <line x1="12" y1="17" x2="12.01" y2="17"/>
                            <#else>
                                <circle cx="12" cy="12" r="10"/>
                                <line x1="12" y1="8" x2="12" y2="12"/>
                                <line x1="12" y1="16" x2="12.01" y2="16"/>
                            </#if>
                        </svg>
                        <span>${kcSanitize(message.summary)?no_esc}</span>
                    </div>
                </#if>

                <#if realm.password>
                    <form id="kc-form-login" class="mg-form" action="${url.loginAction}" method="post">
                        <!-- Campo Usuário / E-mail -->
                        <div class="mg-field">
                            <label for="username" class="mg-label">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
                                    <circle cx="12" cy="7" r="4"/>
                                </svg>
                                <span>
                                    <#if !realm.loginWithEmailAllowed>
                                        Usuário
                                    <#elseif !realm.registrationEmailAsUsername>
                                        Usuário ou e-mail
                                    <#else>
                                        E-mail
                                    </#if>
                                </span>
                            </label>
                            <div class="mg-input-wrap">
                                <input
                                    tabindex="1"
                                    id="username"
                                    class="mg-input<#if messagesPerField.existsError('username','password')> is-invalid</#if>"
                                    name="username"
                                    value="${(login.username!'')}"
                                    type="text"
                                    autofocus
                                    autocomplete="username"
                                    aria-invalid="<#if messagesPerField.existsError('username','password')>true<#else>false</#if>"
                                    placeholder="<#if !realm.loginWithEmailAllowed>Digite seu usuário<#elseif !realm.registrationEmailAsUsername>Digite seu usuário ou e-mail<#else>Digite seu e-mail</#if>"
                                />
                            </div>
                        </div>

                        <!-- Campo Senha com Toggle -->
                        <div class="mg-field">
                            <label for="password" class="mg-label">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                                    <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
                                    <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
                                </svg>
                                <span>Senha</span>
                            </label>
                            <div class="mg-input-wrap mg-input-wrap--password">
                                <input
                                    tabindex="2"
                                    id="password"
                                    class="mg-input<#if messagesPerField.existsError('username','password')> is-invalid</#if>"
                                    name="password"
                                    type="password"
                                    autocomplete="current-password"
                                    aria-invalid="<#if messagesPerField.existsError('username','password')>true<#else>false</#if>"
                                    placeholder="Digite sua senha"
                                />
                                <button
                                    type="button"
                                    id="mg-toggle-password"
                                    class="mg-eye-btn"
                                    aria-label="Mostrar senha"
                                    aria-pressed="false"
                                    tabindex="-1"
                                >
                                    <svg class="mg-eye-show" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                        <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"/>
                                        <circle cx="12" cy="12" r="3"/>
                                    </svg>
                                    <svg class="mg-eye-hide" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                        <path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94"/>
                                        <path d="M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19"/>
                                        <line x1="1" y1="1" x2="23" y2="23"/>
                                    </svg>
                                </button>
                            </div>

                            <#if messagesPerField.existsError('username','password')>
                                <span class="mg-field-error" aria-live="polite">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                                        <circle cx="12" cy="12" r="10"/>
                                        <line x1="12" y1="8" x2="12" y2="12"/>
                                        <line x1="12" y1="16" x2="12.01" y2="16"/>
                                    </svg>
                                    <span>${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}</span>
                                </span>
                            </#if>
                        </div>

                        <!-- Opções da sessão -->
                        <#if (realm.rememberMe && !usernameEditDisabled??) || realm.resetPasswordAllowed>
                            <div class="mg-form-options">
                                <#if realm.rememberMe && !usernameEditDisabled??>
                                    <label class="mg-checkbox">
                                        <#if login.rememberMe??>
                                            <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked>
                                        <#else>
                                            <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox">
                                        </#if>
                                        <span>Manter conectado</span>
                                    </label>
                                </#if>

                                <#if realm.resetPasswordAllowed>
                                    <a tabindex="5" class="mg-forgot-link" href="${url.loginResetCredentialsUrl}">Esqueceu a senha?</a>
                                </#if>
                            </div>
                        </#if>

                        <!-- Botão de Login -->
                        <div class="mg-submit-wrap">
                            <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                            <button tabindex="4" class="mg-submit-btn" name="login" id="kc-login" type="submit">
                                <span class="mg-btn-text">Entrar na Plataforma</span>
                                <svg class="mg-btn-arrow" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                    <path d="M5 12h14"/>
                                    <path d="m12 5 7 7-7 7"/>
                                </svg>
                                <span class="mg-btn-spinner" aria-hidden="true"></span>
                            </button>
                        </div>
                    </form>
                </#if>

                <!-- Provedores externos (Identity Brokering / Social SSO) -->
                <#if realm.password && social.providers?? && social.providers?has_content>
                    <div class="mg-social-section">
                        <div class="mg-social-divider">
                            <span>ou continue com SSO externo</span>
                        </div>

                        <div class="mg-social-grid<#if social.providers?size == 1> mg-social-grid--single</#if>">
                            <#list social.providers as p>
                                <a id="social-${p.alias}" class="mg-social-btn" href="${p.loginUrl}">
                                    <#if p.alias == "github">
                                        <svg class="mg-social-icon" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true">
                                            <path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0 0 24 12c0-6.63-5.37-12-12-12z"/>
                                        </svg>
                                        <span>GitHub</span>
                                    <#elseif p.alias == "gitlab">
                                        <svg class="mg-social-icon" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true">
                                            <path fill="#E24329" d="M22.65 14.39L12 22.13 1.35 14.39a.84.84 0 0 1-.3-.94l1.22-3.78 2.44-7.51A.42.42 0 0 1 4.82 2a.43.43 0 0 1 .58 0 .42.42 0 0 1 .11.18l2.44 7.49h8.1l2.44-7.51A.42.42 0 0 1 18.6 2a.43.43 0 0 1 .58 0 .42.42 0 0 1 .11.18l2.44 7.51L23 13.45a.84.84 0 0 1-.35.94z"/>
                                        </svg>
                                        <span>GitLab</span>
                                    <#elseif p.alias == "google">
                                        <svg class="mg-social-icon" viewBox="0 0 24 24" aria-hidden="true">
                                            <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
                                            <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
                                            <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
                                            <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
                                        </svg>
                                        <span>Google</span>
                                    <#elseif p.alias == "microsoft">
                                        <svg class="mg-social-icon" viewBox="0 0 24 24" aria-hidden="true">
                                            <rect x="2" y="2" width="9.5" height="9.5" fill="#F25022"/>
                                            <rect x="12.5" y="2" width="9.5" height="9.5" fill="#7FBA00"/>
                                            <rect x="2" y="12.5" width="9.5" height="9.5" fill="#00A4EF"/>
                                            <rect x="12.5" y="12.5" width="9.5" height="9.5" fill="#FFB900"/>
                                        </svg>
                                        <span>Microsoft</span>
                                    <#else>
                                        <svg class="mg-social-icon mg-social-icon--oidc" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                            <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
                                            <path d="m9 12 2 2 4-4"/>
                                        </svg>
                                        <span>${p.displayName!'SSO Corporativo'}</span>
                                    </#if>
                                </a>
                            </#list>
                        </div>
                    </div>
                </#if>

                <!-- Registro quando habilitado -->
                <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
                    <div class="mg-register-row">
                        <span>Não possui conta?</span>
                        <a tabindex="6" href="${url.registrationUrl}">Solicitar acesso</a>
                    </div>
                </#if>

                <!-- Rodapé da Plataforma -->
                <footer class="mg-auth-footer">
                    <span>Autenticação unificada OIDC · Zero Trust</span>
                    <div class="mg-footer-links">
                        <a href="https://gersonrs.github.io/modern-gitops-stack/" target="_blank" rel="noopener noreferrer">Documentação</a>
                        <span aria-hidden="true">·</span>
                        <a href="https://github.com/GersonRS/modern-gitops-stack" target="_blank" rel="noopener noreferrer">GitHub</a>
                    </div>
                </footer>
            </div>
        </section>
    </main>
</@layout.registrationLayout>
