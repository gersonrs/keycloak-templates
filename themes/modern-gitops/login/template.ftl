<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false showAnotherWayIfPresent=true fullPage=false>
<!DOCTYPE html>
<html lang="${(locale.currentLanguageTag)!'pt-BR'}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>

    <title>${msg("loginTitle",(realm.displayName!'Modern GitOps Stack'))}</title>

    <link rel="icon" type="image/svg+xml" href="${url.resourcesPath}/img/favicon.svg" />

    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600&family=Plus+Jakarta+Sans:wght@500;600;700;800&display=swap" rel="stylesheet">
</head>

<body class="modern-gitops-body ${bodyClass}">
    <#if fullPage>
        <#nested>
    <#else>
        <main class="mg-viewport">
            <div class="mg-backdrop" aria-hidden="true">
                <div class="mg-grid-mesh"></div>
                <div class="mg-glow mg-glow--mint"></div>
                <div class="mg-glow mg-glow--indigo"></div>
                <div class="mg-glow mg-glow--cyan"></div>
            </div>

            <div class="mg-shell mg-shell--compact">
                <div class="mg-auth-panel mg-auth-panel--compact">
                    <div class="mg-brand-bar mg-brand-bar--compact">
                        <div class="mg-brand-identity">
                            <svg class="mg-pipeline-logo" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                                <defs>
                                    <linearGradient id="mgCompactPipeGrad" x1="8" y1="8" x2="54" y2="54" gradientUnits="userSpaceOnUse">
                                        <stop offset="0%" stop-color="#64ffda"/>
                                        <stop offset="100%" stop-color="#00d4ff"/>
                                    </linearGradient>
                                </defs>
                                <path d="M46 11L21 15.5C14.5 16.8 12.5 23 19 25.8L41 33.5C47.5 36 46.5 44.5 38 46.8L22 50" stroke="url(#mgCompactPipeGrad)" stroke-width="9.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M46 11L21 15.5C14.5 16.8 12.5 23 19 25.8L41 33.5C47.5 36 46.5 44.5 38 46.8L22 50" stroke="#0a192f" stroke-opacity="0.45" stroke-width="1.5" stroke-dasharray="1 7" stroke-linecap="round"/>
                                <circle cx="19" cy="46.5" r="11" fill="url(#mgCompactPipeGrad)" stroke="#0a192f" stroke-width="1.5"/>
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
                        <span class="mg-sso-badge">SSO OIDC · ${(realm.displayName!'Modern GitOps Stack')}</span>
                    </div>

                    <div class="mg-auth-header">
                        <h1 class="mg-auth-title"><#nested "header"></h1>
                    </div>

                    <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                        <div class="mg-alert mg-alert--${message.type}" role="alert">
                            <svg class="mg-alert-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                                <circle cx="12" cy="12" r="10"/>
                                <line x1="12" y1="8" x2="12" y2="12"/>
                                <line x1="12" y1="16" x2="12.01" y2="16"/>
                            </svg>
                            <span>${kcSanitize(message.summary)?no_esc}</span>
                        </div>
                    </#if>

                    <div class="mg-kc-fallback-form">
                        <#nested "form">
                        <#nested "socialProviders">
                    </div>

                    <#if displayInfo>
                        <div class="mg-kc-fallback-info">
                            <#nested "info">
                        </div>
                    </#if>
                </div>
            </div>
        </main>
    </#if>

    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" defer></script>
        </#list>
    </#if>
</body>
</html>
</#macro>
