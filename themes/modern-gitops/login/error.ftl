<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false fullPage=true>
    <main class="mg-viewport">
        <!-- Atmosfera luminosa centralizada -->
        <div class="mg-backdrop" aria-hidden="true">
            <div class="mg-grid-mesh"></div>
            <div class="mg-glow mg-glow--mint"></div>
            <div class="mg-glow mg-glow--indigo"></div>
            <div class="mg-glow mg-glow--cyan"></div>
        </div>

        <section class="mg-shell" aria-label="Erro de Autenticação Modern GitOps Stack">
            <!-- Coluna Esquerda: Identidade da Stack -->
            <div class="mg-showcase">
                <div class="mg-brand-bar">
                    <div class="mg-brand-identity">
                        <svg class="mg-pipeline-logo" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                            <defs>
                                <linearGradient id="mgErrPipeGrad" x1="8" y1="8" x2="54" y2="54" gradientUnits="userSpaceOnUse">
                                    <stop offset="0%" stop-color="#64ffda"/>
                                    <stop offset="100%" stop-color="#00d4ff"/>
                                </linearGradient>
                            </defs>
                            <path d="M46 11L21 15.5C14.5 16.8 12.5 23 19 25.8L41 33.5C47.5 36 46.5 44.5 38 46.8L22 50" stroke="url(#mgErrPipeGrad)" stroke-width="9.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M46 11L21 15.5C14.5 16.8 12.5 23 19 25.8L41 33.5C47.5 36 46.5 44.5 38 46.8L22 50" stroke="#0a192f" stroke-opacity="0.45" stroke-width="1.5" stroke-dasharray="1 7" stroke-linecap="round"/>
                            <circle cx="19" cy="46.5" r="11" fill="url(#mgErrPipeGrad)" stroke="#0a192f" stroke-width="1.5"/>
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

                <div class="mg-hero">
                    <h1 class="mg-hero-title">
                        Plataforma Kubernetes<br>
                        <span class="mg-gradient-text">GitOps, Dados &amp; MLOps</span><br>
                        Pronta para Produção
                    </h1>
                    <p class="mg-hero-desc">
                        Não foi possível concluir o fluxo de autenticação OIDC solicitado. Verifique os detalhes ao lado ou retorne para a aplicação de origem.
                    </p>
                </div>

                <div class="mg-blueprint">
                    <div class="mg-blueprint-head">
                        <span class="mg-blueprint-label">CAMADAS PROTEGIDAS POR SSO</span>
                        <span class="mg-blueprint-status">
                            <span class="mg-status-pulse" aria-hidden="true"></span>
                            Zero Trust OIDC
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
            </div>

            <!-- Coluna Direita: Diagnóstico de Erro -->
            <div class="mg-auth-panel">
                <div class="mg-mobile-brand">
                    <svg class="mg-pipeline-logo" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                        <defs>
                            <linearGradient id="mgErrMobPipeGrad" x1="8" y1="8" x2="54" y2="54" gradientUnits="userSpaceOnUse">
                                <stop offset="0%" stop-color="#64ffda"/>
                                <stop offset="100%" stop-color="#00d4ff"/>
                            </linearGradient>
                        </defs>
                        <path d="M46 11L21 15.5C14.5 16.8 12.5 23 19 25.8L41 33.5C47.5 36 46.5 44.5 38 46.8L22 50" stroke="url(#mgErrMobPipeGrad)" stroke-width="9.5" stroke-linecap="round" stroke-linejoin="round"/>
                        <circle cx="19" cy="46.5" r="11" fill="url(#mgErrMobPipeGrad)" stroke="#0a192f" stroke-width="1.5"/>
                        <circle cx="19" cy="46.5" r="5.2" fill="#0a192f"/>
                    </svg>
                    <div class="mg-brand-wordmark">
                        <span class="mg-brand-title">MODERN <span class="mg-brand-accent">GITOPS</span></span>
                        <span class="mg-brand-sub">STACK</span>
                    </div>
                </div>

                <div class="mg-auth-top">
                    <span class="mg-sso-badge mg-sso-badge--error">
                        <span class="mg-sso-dot" aria-hidden="true"></span>
                        Diagnóstico de Autenticação
                    </span>
                </div>

                <div class="mg-auth-header">
                    <h2 class="mg-auth-title">Falha na Autenticação</h2>
                    <p class="mg-auth-subtitle">Realm: ${(realm.displayName!'Modern GitOps Stack')}</p>
                </div>

                <div class="mg-terminal-bar" aria-hidden="true">
                    <div class="mg-terminal-dots">
                        <span></span><span></span><span></span>
                    </div>
                    <div class="mg-terminal-cmd">
                        <span class="mg-terminal-prompt">&#10095;</span>
                        <span>auth status --verify</span>
                        <span class="mg-terminal-status mg-terminal-status--error">[erro]</span>
                    </div>
                </div>

                <div class="mg-alert mg-alert--error" role="alert">
                    <svg class="mg-alert-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                        <circle cx="12" cy="12" r="10"/>
                        <line x1="12" y1="8" x2="12" y2="12"/>
                        <line x1="12" y1="16" x2="12.01" y2="16"/>
                    </svg>
                    <span>
                        <#if message?has_content>
                            ${kcSanitize(message.summary)?no_esc}
                        <#else>
                            Ocorreu um erro inesperado durante a autenticação.
                        </#if>
                    </span>
                </div>

                <#if !(skipLink??) && client?? && client.baseUrl?has_content>
                    <div class="mg-submit-wrap">
                        <a href="${client.baseUrl}" class="mg-submit-btn mg-submit-btn--link">
                            <span>Voltar para a Aplicação</span>
                            <svg class="mg-btn-arrow" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                <path d="M5 12h14"/>
                                <path d="m12 5 7 7-7 7"/>
                            </svg>
                        </a>
                    </div>
                </#if>

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
