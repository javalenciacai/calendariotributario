# Pitch: Calendario Tributario Global con Notificaciones Inteligentes

> Metodología: Shape Up (Basecamp)
> Ciclo de investigación: 6 semanas
> Fecha: Marzo 2026
> Autor: Iniciativa de Investigación

---

## 1. Problema

### El problema crudo

Las personas y empresas en todo el mundo pierden dinero y enfrentan sanciones por presentar declaraciones de impuestos tarde — no porque sean descuidadas, sino porque **el sistema tributario global es caótico, fragmentado y difícil de seguir**.

- Un freelancer que trabaja para clientes en 3 países distintos tiene que recordar por su cuenta decenas de fechas de vencimiento.
- Una PYME que opera en dos estados o provincias puede tener obligaciones tributarias en ambas jurisdicciones.
- Los calendarios oficiales de los gobiernos están dispersos, en idiomas distintos, mal diseñados y no envían alertas proactivas.
- Los contadores son costosos y no todos los contribuyentes tienen acceso a uno.

### Evidencia del problema

| Síntoma                                 | Consecuencia                              |
|-----------------------------------------|-------------------------------------------|
| Fecha límite desconocida                | Multas y recargos por presentación tardía |
| Obligaciones en múltiples jurisdicciones| Errores de cumplimiento                   |
| Cambios en la legislación fiscal        | Información desactualizada                |
| Falta de herramientas asequibles        | Solo grandes empresas tienen este apoyo   |

### Para quién es este problema

1. **Freelancers y trabajadores independientes** con clientes locales o internacionales.
2. **Pequeñas y medianas empresas (PYMES)** que operan en una o varias jurisdicciones.
3. **Startups con presencia global** que aún no tienen un equipo fiscal dedicado.
4. **Personas físicas** con inversiones, propiedades o ingresos en el extranjero.
5. **Contadores y asesores fiscales** que llevan múltiples clientes.

---

## 2. Apetito

### ¿Cuánto queremos invertir en la investigación?

**Ciclo de investigación: 6 semanas**

Este es un proyecto complejo porque toca:

- Regulación (varía por país, estado, municipio, tipo de entidad).
- Tecnología (sistema de notificaciones, modelo de datos, integraciones).
- Mercado (¿quién paga? ¿cuánto? ¿hay competidores?).
- Legal (¿podemos dar "asesoría fiscal" o solo información?)

El objetivo de esta fase **no** es construir el producto. Es determinar si el problema es suficientemente universal y resoluble para justificar construirlo.

### Resultado esperado de la investigación

Al final del ciclo de 6 semanas debemos poder responder con confianza:

- [ ] ¿Cuáles son los 10 países/jurisdicciones prioritarios para el lanzamiento inicial?
- [ ] ¿Qué datos mínimos necesitamos del usuario para calcular sus obligaciones?
- [ ] ¿Qué tan frecuentemente cambian las fechas tributarias y cómo las rastreamos?
- [ ] ¿Existe un modelo de negocio sostenible?
- [ ] ¿Qué riesgo legal implica operar este servicio?

---

## 3. Solución (Dirección de Investigación)

No estamos diseñando la solución final aún. Estamos **dibujando a nivel de tablero** cómo creemos que debería funcionar el sistema, para orientar nuestras preguntas de investigación.

### Idea central del sistema

```
[Usuario se registra]
        ↓
[Responde preguntas de perfil fiscal]
  - País(es) de residencia y operación
  - Tipo de contribuyente (persona física / empresa)
  - Tipo de empresa (si aplica)
  - Sectores o actividades económicas
  - Ingresos estimados (rangos)
        ↓
[Motor de reglas tributarias]
  - Cruza el perfil con la base de datos de obligaciones
  - Genera un calendario personalizado
        ↓
[Sistema de notificaciones]
  - Email, SMS, push (configurable)
  - Alertas con 30, 15, 7 y 1 día de anticipación
  - Link directo a la fuente oficial
        ↓
[Dashboard del usuario]
  - Vista de calendario
  - Lista de próximas obligaciones
  - Estado: pendiente / completado / vencido
```

### Preguntas abiertas que guiarán la investigación

Estas preguntas son las **hipótesis a validar o refutar**:

1. ¿Es posible modelar las reglas tributarias de un país en una base de datos estructurada?
2. ¿Con qué set mínimo de datos del usuario podemos determinar sus obligaciones?
3. ¿Cómo manejamos los casos donde las reglas son ambiguas o dependen de interpretación?
4. ¿Con qué frecuencia se actualizan las obligaciones tributarias?
5. ¿Cómo construimos confianza con el usuario en un tema tan sensible como los impuestos?

---

## 4. Áreas de Investigación

### 4.1 Investigación Regulatoria y Tributaria

**Objetivo:** Entender la estructura de las obligaciones tributarias en los mercados clave.

**Tareas:**

- [ ] Mapear las categorías de impuestos más comunes globalmente:
  - Impuesto sobre la renta (personas físicas y jurídicas)
  - IVA / VAT / GST
  - Impuestos sobre nómina
  - Impuestos sobre dividendos y ganancias de capital
  - Impuestos municipales / locales
  - Declaraciones informativas (sin pago, pero con fecha límite)

- [ ] Seleccionar 10 mercados prioritarios para estudio profundo:
  - **Latinoamérica**: México, Colombia, Argentina, Chile, Brasil
  - **Norteamérica**: EE.UU., Canadá
  - **Europa**: España, Alemania
  - **Asia-Pacífico**: Australia o India

- [ ] Para cada mercado, documentar:
  - Autoridad fiscal (SAT, DIAN, AFIP, SII, Receita Federal, IRS, etc.)
  - Tipos de declaraciones y periodicidades (mensual, trimestral, anual)
  - Qué determina a qué régimen pertenece un contribuyente
  - Fuente oficial de las fechas (URL, API pública si existe)
  - ¿Publican un calendario tributario oficial descargable?
  - Sanciones por incumplimiento (para dimensionar el dolor del usuario)

- [ ] Investigar si existen organismos internacionales que estandarizan datos fiscales:
  - OCDE / OECD Tax Database
  - IBFD (International Bureau of Fiscal Documentation)
  - Tax Foundation Global Tax Data

**Entregable:** Matriz de obligaciones tributarias por país/jurisdicción (spreadsheet estructurado).

---

### 4.2 Investigación de Usuarios

**Objetivo:** Validar que el problema existe y dimensionar la disposición a pagar.

**Tareas:**

- [ ] Definir segmentos objetivo y realizar 15-20 entrevistas:
  - 5 freelancers/autónomos
  - 5 dueños de PYMES (1-50 empleados)
  - 5 contadores (perspectiva del experto que podría usar la herramienta)

- [ ] Guía de entrevista — preguntas clave:
  - ¿Cómo llevas hoy el control de tus fechas tributarias?
  - ¿Alguna vez has presentado tarde o pagado una multa por olvido? ¿Cuánto?
  - ¿Usas alguna herramienta hoy para esto? ¿Qué le falta?
  - ¿Pagarías por un servicio que te notifique automáticamente? ¿Cuánto?
  - ¿Qué necesitarías para confiar en la información que el sistema te da?

- [ ] Encuesta cuantitativa (n=200+):
  - Validar frecuencia y severidad del problema
  - Medir disposición a pagar (Willingness to Pay)
  - Identificar canales de notificación preferidos

- [ ] Investigar si contadores/asesores fiscales serían distribuidores (canal B2B2C):
  - ¿Usarían la herramienta para gestionar calendarios de sus clientes?
  - ¿Pagarían por una versión para múltiples clientes?

**Entregable:** Documento de Jobs to Be Done + personas de usuario.

---

### 4.3 Investigación Competitiva

**Objetivo:** Entender el panorama de soluciones existentes y encontrar el espacio diferenciador.

**Competidores directos:**

| Producto          | Descripción                          | Mercado       | Modelo          |
|-------------------|--------------------------------------|---------------|-----------------|
| TaxJar            | Automatización de sales tax EE.UU.   | EE.UU.        | SaaS            |
| Avalara           | Cumplimiento fiscal empresarial       | Global        | Enterprise SaaS |
| QuickBooks Tax    | Módulo fiscal dentro de contabilidad  | EE.UU./Global | Freemium        |
| Taxfix            | Declaración de renta simplificada     | Alemania      | Consumer app    |
| Declarando.es     | Impuestos para freelancers            | España        | SaaS            |

**Tareas:**

- [ ] Hacer un deep-dive de cada competidor:
  - ¿Cubren calendarios o solo la declaración en sí?
  - ¿Soportan múltiples jurisdicciones?
  - ¿Tienen notificaciones proactivas?
  - ¿Cuál es su precio?
  - ¿Cuáles son sus reseñas más negativas? (ver qué falta)

- [ ] Buscar soluciones locales emergentes en Latinoamérica (mercado menos saturado):
  - Colombia: Alegra, Siigo
  - México: CONTPAQi, Aspel
  - Argentina: Colppy, Xubio

- [ ] Identificar el **espacio en blanco**: ¿hay alguna herramienta que sea agnóstica al país, orientada a notificaciones, y accesible para personas físicas y PYMES?

**Entregable:** Mapa competitivo con oportunidades de diferenciación.

---

### 4.4 Investigación Técnica

**Objetivo:** Evaluar la factibilidad técnica y definir la arquitectura de datos mínima viable.

**Tareas:**

#### Modelo de datos tributarios
- [ ] ¿Cómo modelamos una "obligación tributaria" de forma genérica?
  ```
  ObligacionTributaria {
    jurisdiccion: País/Estado/Municipio
    tipo: Impuesto (IVA, ISR, ICA, etc.)
    periodicidad: Mensual/Trimestral/Anual/Bimestral
    fecha_vencimiento: Calculada según reglas
    reglas_elegibilidad: Tipos de contribuyente que aplican
    fuente_oficial: URL
    ultima_actualizacion: Timestamp
  }
  ```

- [ ] ¿Podemos aprovechar fuentes de datos abiertas o necesitamos curación manual?
  - Explorar: OECD APIs, portales gubernamentales con datos abiertos
  - Evaluar: ¿hay startups de "tax data as a service"?

#### Sistema de reglas y elegibilidad
- [ ] ¿Cómo modelamos las reglas de elegibilidad?
  - Ejemplo: "Aplica si eres persona moral en México con ingresos > $2M MXN"
  - Opciones técnicas: motor de reglas (Drools, JSON Rules, reglas en código)

#### Notificaciones
- [ ] Investigar servicios de notificación multi-canal:
  - Email: SendGrid, Resend, AWS SES
  - SMS: Twilio, AWS SNS
  - Push: Firebase FCM
  - WhatsApp: Twilio / Meta Business API (relevante para LATAM)

#### Stack tecnológico preliminar
- [ ] Evaluar qué stack tiene mayor velocidad para un MVP:
  - Backend: Node.js / Python / Go
  - Base de datos: PostgreSQL + esquema de reglas flexible
  - Frontend: Next.js (web) + PWA para notificaciones push
  - Infraestructura: Railway / Supabase / Vercel para bajo costo inicial

**Entregable:** Documento de arquitectura conceptual + matriz de decisiones técnicas.

---

### 4.5 Investigación Legal y de Cumplimiento

**Objetivo:** Entender los límites legales del servicio y cómo operar sin riesgo.

**Preguntas clave:**

- [ ] **¿Estamos dando "asesoría fiscal" o solo "información fiscal"?**
  - Esta distinción es crítica: la asesoría fiscal está regulada en casi todos los países.
  - Necesitamos un disclaimer legal claro: "Este servicio es informativo, no constituye asesoría fiscal."

- [ ] **¿Podemos ser responsabilizados si una fecha es incorrecta?**
  - Investigar marcos de responsabilidad limitada en los mercados objetivo.
  - ¿Qué dicen los términos de servicios similares (TaxJar, Taxfix)?

- [ ] **Privacidad de datos:**
  - Los datos fiscales son datos sensibles.
  - GDPR (Europa), CCPA (California), LGPD (Brasil), Ley 1581 (Colombia).
  - ¿Qué datos necesitamos almacenar y por cuánto tiempo?

- [ ] **¿Necesitamos licencias o registros para operar en cada país?**

- [ ] **Considerar una estructura de "safe harbor":**
  - Agregar botón "Consultar con un contador" (modelo de referidos/marketplace).
  - Convertir el riesgo legal en un feature de negocio.

**Entregable:** Memorando legal con recomendaciones para estructura corporativa y términos de servicio.

---

### 4.6 Investigación de Modelo de Negocio

**Objetivo:** Determinar si existe un modelo sostenible y escalable.

**Modelos a evaluar:**

| Modelo                  | Descripción                                               | Pros                        | Contras                         |
|-------------------------|-----------------------------------------------------------|-----------------------------|---------------------------------|
| Freemium - B2C          | Gratis básico, pago por múltiples jurisdicciones          | Adquisición fácil           | Monetización lenta              |
| SaaS - B2B (contadores) | Suscripción mensual por contador con N clientes           | Ticket alto, pago recurrente| Ciclo de venta más largo        |
| B2B2C                   | Bancos/fintechs ofrecen el servicio a sus usuarios        | Distribución masiva         | Dependencia de socios           |
| Marketplace de contadores| Conectar usuarios con contadores locales certificados    | Comisión por transacción    | Complejidad operativa           |
| Datos tributarios API   | Vender acceso a la base de datos de reglas a otras apps   | Alta margen, escalable      | Requiere reputación primero     |

**Tareas:**

- [ ] Benchmarks de pricing de competidores
- [ ] Estimar TAM (Total Addressable Market):
  - Número de contribuyentes registrados por país clave
  - Porcentaje que son PYMES o independientes
  - Willingness to pay (de las entrevistas)
- [ ] Calcular Unit Economics preliminares:
  - CAC estimado por canal (paid search, word of mouth, B2B partnerships)
  - LTV estimado para cada segmento
- [ ] Benchmarks de churn en productos de cumplimiento fiscal

**Entregable:** Modelo financiero de una hoja (one-pager) con 3 escenarios (conservador, base, optimista).

---

### 4.7 Investigación de Mantenimiento y Actualización del Calendario

**Objetivo:** Entender cómo mantener el calendario preciso, vigente y confiable a lo largo del tiempo — sin que el costo operativo lo haga insostenible.

Este es uno de los riesgos más altos del producto: **los datos tributarios cambian constantemente** (reformas fiscales, decretos, resoluciones, cambios de gobierno). Un calendario desactualizado destruye la confianza del usuario y puede generar daños reales.

---

#### 4.7.1 Fuentes de cambio — ¿qué cambia y con qué frecuencia?

- [ ] Catalogar los tipos de cambios que ocurren en un calendario tributario:
  - **Cambios de fecha**: El gobierno corre un vencimiento por día festivo o decreto.
  - **Cambios de periodicidad**: Un impuesto pasa de mensual a bimestral.
  - **Nuevas obligaciones**: Se crea un impuesto o declaración informativa nueva.
  - **Obligaciones eliminadas**: Se deroga un impuesto o se fusiona con otro.
  - **Cambios de régimen/elegibilidad**: Se modifica quién está obligado a declarar.
  - **Suspensiones temporales**: El gobierno extiende plazos por emergencias (ej. COVID-19).

- [ ] Investigar la frecuencia histórica de cambios por país:
  - ¿Cuántas resoluciones emite la DIAN (Colombia) al año que afectan fechas?
  - ¿Con cuánta anticipación publica el SAT (México) su calendario anual?
  - ¿Los cambios de último minuto son comunes o excepcionales?

- [ ] Identificar el **canal oficial de publicación** en cada país:
  | País       | Fuente oficial de cambios                     | Formato         | API disponible |
  |------------|-----------------------------------------------|-----------------|----------------|
  | México     | DOF (Diario Oficial de la Federación)         | HTML/PDF        | No             |
  | Colombia   | DIAN - Resoluciones                           | PDF             | No             |
  | Chile      | SII - Calendario tributario                   | HTML            | Parcial        |
  | Argentina  | AFIP - Resoluciones generales                 | PDF             | No             |
  | Brasil     | Receita Federal - Calendário                  | HTML/PDF        | No             |
  | EE.UU.     | IRS.gov - Tax Calendar                        | HTML/iCal       | Parcial        |
  | España     | AEAT - Calendario contribuyente               | HTML/PDF/iCal   | Parcial        |

---

#### 4.7.2 Estrategias de actualización — evaluar cuál es viable

**Opción A: Curación 100% manual (equipo interno)**

- [ ] Estimar el costo operativo:
  - ¿Cuántas horas/persona por país por mes para monitorear y actualizar?
  - ¿Qué perfil tiene esa persona? (experto fiscal vs. asistente con checklist)
- [ ] ¿Cómo estructuramos el proceso de edición del calendario?
  - CMS interno para editores de datos
  - Sistema de versionamiento para auditoría de cambios
  - Flujo de aprobación antes de publicar un cambio

**Opción B: Web scraping / monitoreo automatizado**

- [ ] Investigar factibilidad de scraping de fuentes oficiales:
  - Identificar los portales y evaluar su estructura (HTML semántico vs. PDF plano vs. iFrame)
  - ¿Qué herramientas de scraping son adecuadas? (Playwright, BeautifulSoup, Firecrawl)
  - ¿Con qué frecuencia deben correr los scrapers? (diario, semanal)
  - ¿Qué hace el sistema cuando detecta un cambio? → Flujo de alerta a revisor humano

- [ ] Evaluar herramientas de monitoreo de cambios en páginas web:
  - Visualping, Distill.io, Wachete
  - Construir propio con GitHub Actions + diff de HTML

- [ ] Problemas conocidos del scraping tributario:
  - Calendarios publicados en PDF (necesitan OCR)
  - Portales con CAPTCHA o anti-bot
  - Información distribuida en múltiples resoluciones (no en una sola página)

**Opción C: Alianzas con firmas contables o proveedores de datos**

- [ ] Investigar proveedores de datos fiscales que ya mantienen bases actualizadas:
  - **IBFD** (International Bureau of Fiscal Documentation) — ¿venden data feeds?
  - **Thomson Reuters ONESOURCE** — ¿tienen API de datos tributarios?
  - **Wolters Kluwer CCH** — ¿ofrecen licenciamiento de datos?
  - **Firmas Big Four** (Deloitte, KPMG, EY, PwC) — ¿tienen productos de datos?

- [ ] Evaluar alianzas locales con gremios contables:
  - Colombia: Consejo Técnico de la Contaduría Pública
  - México: IMCP (Instituto Mexicano de Contadores Públicos)
  - Modelo: ellos validan los datos, nosotros los distribuimos

- [ ] Evaluar modelo **"Community-maintained"** (Wikipedia del calendario fiscal):
  - Usuarios expertos (contadores) editan y validan cambios
  - Sistema de reputación o karma para editores
  - Riesgo: ¿cómo garantizamos la calidad y precisión?

**Opción D: Híbrida (recomendada para investigar)**

- [ ] Diseñar un flujo híbrido: automatización detecta → humano valida → sistema publica
  ```
  [Scraper / Monitor diario]
       ↓ detecta cambio potencial
  [Alerta a editor interno o contador aliado]
       ↓ valida en fuente oficial
  [Aprueba el cambio en el CMS]
       ↓ sistema publica actualización
  [Notificación a usuarios afectados]
       "La fecha de tu declaración de IVA de abril cambió"
  ```

---

**Opción E: Agentes de IA como recolectores activos de información**

> Esta es una estrategia emergente y diferenciadora. En lugar de esperar a que la información llegue (scraping pasivo), desplegamos agentes autónomos que van a buscarla activamente donde vive: en entidades gubernamentales, comunidades de contadores y plataformas de discusión fiscal.

#### Fuentes no estructuradas que los agentes pueden explorar

**E.1 — Contacto directo con entidades gubernamentales (email / formularios)**

- [ ] Investigar si las alcaldías, municipios e institutos tributarios locales tienen canales de comunicación oficial consultables:
  - Alcaldías (Colombia, México, Argentina) con correos de atención al ciudadano
  - Tesorerías municipales con formularios de PQRS o solicitudes de información pública
  - Secretarías de Hacienda locales (impuestos de industria y comercio, predial, etc.)
  - Portales de Gobierno Abierto con datos de contacto de funcionarios

- [ ] Diseñar un agente de IA tipo "informador fiscal":
  ```
  Agente EmailBot:
    - Tiene una lista de entidades tributarias por país/municipio
    - Envía periódicamente solicitudes de información pública estructuradas:
      "¿Cuáles son las fechas límite vigentes para [tipo de impuesto] en [periodo]?"
    - Procesa las respuestas recibidas (texto libre)
    - Extrae fechas y datos estructurados con NLP
    - Los propone al editor humano para validación antes de publicar
  ```

- [ ] Evaluar el marco legal de las solicitudes de información pública:
  - Colombia: Ley 1712 de 2014 (Transparencia y acceso a información pública)
  - México: Ley Federal de Transparencia (INAI)
  - Argentina: Ley 27.275
  - EE.UU.: Freedom of Information Act (FOIA)
  - ¿Obligan a las entidades a responder en X días?

- [ ] Riesgos y limitaciones:
  - Las entidades locales pueden tardar semanas en responder o no responder
  - Las respuestas pueden ser ambiguas o en formatos no parseables
  - No escala bien sin supervisión humana
  - **Mitigación:** usar esta fuente como complemento, no como principal

---

**E.2 — Personas naturales como fuente de datos: contadores y contribuyentes en plataformas**

La información tributaria más fresca frecuentemente aparece primero en conversaciones entre profesionales — antes de que los boletines oficiales la recojan. Los agentes pueden monitorear estas comunidades.

- [ ] Identificar plataformas donde contadores y contribuyentes discuten cambios fiscales:

  | Plataforma         | Tipo de fuente                                   | Relevancia por región        |
  |--------------------|--------------------------------------------------|------------------------------|
  | **Grupos de WhatsApp** | Contadores comparten resoluciones al instante | Alta en LATAM                |
  | **Telegram**       | Canales de noticias fiscales (p. ej. @DianColombia_noticias) | Alta en LATAM  |
  | **Facebook Groups**| "Contadores Colombia", "Contabilidad México"     | Alta en LATAM                |
  | **Reddit**         | r/personalfinance, r/tax, r/Colombia             | Alta en EE.UU./España        |
  | **LinkedIn**       | Posts de firmas contables y asesores fiscales    | Global                       |
  | **Foros contables**| Contaduría.net, PlanContable.com, Expansion.mx  | Media / regional             |
  | **Twitter/X**      | Hashtags #IVA #SAT #DIAN #ReformaFiscal         | Alta para cambios urgentes   |
  | **YouTube**        | Canales de contadores explicando cambios recientes | Media (requiere transcripción) |
  | **Stack Exchange** | money.stackexchange.com                          | Alta en EE.UU.               |

- [ ] Diseñar agentes de monitoreo por plataforma:
  ```
  Agente SocialListener:
    - Monitorea palabras clave: "fecha límite", "vencimiento", "resolución", 
      "prórroga", "cambio tributario", nombres de impuestos por país
    - Extrae posts/comentarios relevantes con timestamp
    - Clasifica por: país, tipo de impuesto, urgencia
    - Linkea a la fuente original para validación humana
    - NO publica nada automáticamente sin validación
  ```

- [ ] Evaluar herramientas de social listening con capacidades de IA:
  - **Apify** — scrapers para Reddit, Twitter, Facebook, LinkedIn
  - **Firecrawl** — extracción de contenido web estructurado
  - **Brand24 / Mention** — monitoreo de menciones con NLP
  - **Make.com / n8n** — orquestación de flujos de recolección
  - **LLM + RAG** — para procesar texto no estructurado y extraer datos fiscales

- [ ] Investigar si es factible crear un **chatbot fiscal de recolección** (inverso al producto):
  - Un bot en WhatsApp o Telegram donde los contadores pueden reportar cambios:
    "Acabo de recibir el boletín del SAT, cambió la fecha del IVA de julio"
  - El bot hace preguntas estructuradas para extraer datos exactos
  - Los datos van a una cola de revisión editorial
  - **Incentivo para el contador:** acceso gratuito premium a cambio de contribuciones

---

**E.3 — Agentes de IA para extracción de documentos no estructurados**

Muchos gobiernos publican la información en formatos difíciles: PDFs escaneados, boletines en Word, imágenes de calendarios. Los agentes de IA pueden procesar estos formatos.

- [ ] Investigar capacidades de extracción de datos fiscales de documentos:
  - **OCR + LLM**: extraer tablas de PDFs escaneados (resoluciones del DOF, DIAN, AFIP)
  - **Document AI** (Google) o **Azure Document Intelligence** para PDFs estructurados
  - **LlamaParse / Unstructured.io** para documentos complejos
  - Pipeline sugerido:
    ```
    [PDF de resolución oficial]
          ↓
    [OCR / Document AI]
          ↓
    [LLM con prompt específico]
      "Extrae todas las fechas límite fiscales mencionadas,
       el tipo de impuesto, jurisdicción y contribuyentes que aplica"
          ↓
    [JSON estructurado]
          ↓
    [Revisión humana → aprobación → base de datos]
    ```

- [ ] Evaluar precisión y confiabilidad:
  - ¿Qué tan preciso es el LLM extrayendo fechas de resoluciones reales?
  - ¿Cómo manejamos resoluciones con lenguaje jurídico ambiguo?
  - Construir un conjunto de prueba con 50 resoluciones reales para medir precisión

---

**E.4 — Pipeline completo de recolección con agentes (visión integrada)**

```
FUENTES                    AGENTES                    VALIDACIÓN              BASE DE DATOS
─────────────────────────────────────────────────────────────────────────────────────────
Portales oficiales    →   Scraper Bot               →                    →
PDFs y resoluciones   →   Document AI + LLM         →  Editor humano     →  Calendario
Grupos WhatsApp/TG    →   Social Listener Bot       →  (cola de          →  Tributario
Foros y Reddit        →   Community Monitor Bot     →  revisión)         →  Verificado
Correos alcaldías     →   EmailBot + NLP Parser     →                    →
Contadores reportando →   Chatbot receptor (WA/TG)  →                    →
```

- [ ] Investigar qué frameworks de agentes de IA son adecuados para este pipeline:
  - **LangChain / LangGraph** — orquestación de agentes con herramientas
  - **CrewAI** — múltiples agentes con roles especializados
  - **AutoGen (Microsoft)** — agentes conversacionales colaborativos
  - **n8n + LLM nodes** — sin código para flujos de recolección simples
  - **Pydantic AI** — agentes con salida estructurada (ideal para extracción de datos)

- [ ] Definir el nivel de autonomía de cada agente:
  | Agente               | ¿Puede publicar solo? | Supervisión requerida |
  |----------------------|-----------------------|-----------------------|
  | Scraper de portales  | No                    | Alta (cambios frecuentes de estructura) |
  | Document AI extractor| No                    | Media (revisar precisión) |
  | Social Listener      | No                    | Alta (ruido alto en redes) |
  | EmailBot             | No                    | Media (respuestas formales) |
  | Chatbot receptor     | No                    | Baja (el contador ya validó) |

- [ ] Evaluar el costo operativo de este pipeline de agentes:
  - Costo de LLM por documento procesado (tokens)
  - Costo de APIs de terceros (Apify, Document AI)
  - Comparar vs. costo del equipo humano de curación

**Entregable adicional de 4.7.2:** Prototipo de prueba de concepto con 1 agente (el de extracción de PDFs) evaluado sobre 50 resoluciones reales de 3 países.

---

#### 4.7.3 Infraestructura de datos para actualizaciones

- [ ] **¿Cómo versionamos el calendario?**
  - Cada obligación debe tener historial de cambios (quién cambió qué y cuándo)
  - Los usuarios deben poder ver "este dato fue actualizado el DD/MM/AAAA"
  - Usar un modelo de datos con `valid_from` / `valid_until` para reglas temporales

- [ ] **¿Cómo notificamos a usuarios cuando cambia su calendario?**
  - Si cambia una fecha que el usuario ya tenía en su calendario → notificación proactiva
  - Canal preferido: email inmediato + push notification

- [ ] **¿Cómo manejamos incertidumbre?**
  - Casos donde la fecha oficial aún no ha sido publicada (ej. primeros días del año)
  - Mostrar "fecha tentativa - verificar" vs. bloquear la UI hasta tener certeza
  - Fecha de confianza: `confirmed | estimated | unverified`

- [ ] **Audit log de cambios:**
  - ¿Quién editó qué dato?
  - ¿Con qué fuente respaldó el cambio? (URL del decreto, número de resolución)
  - Esencial para la credibilidad del producto

---

#### 4.7.4 Benchmarks — ¿cómo lo resuelven otros?

- [ ] Investigar cómo productos similares mantienen sus datos:
  - **TaxJar**: tienen equipo dedicado de tax researchers + automatización para sales tax de EE.UU.
  - **Avalara**: compran datos tributarios a proveedores y tienen equipo de 200+ tax analysts
  - **Taxfix** (Alemania): foco en un solo país, actualización anual (impuesto sobre la renta)
  - **Calendly / iCal tributario del IRS**: archivo `.ics` publicado manualmente cada enero

- [ ] Preguntar en entrevistas a contadores:
  - ¿Cómo se enteran ellos de los cambios en el calendario del fisco?
  - ¿Cuánto tiempo les toma adaptarse a un cambio de última hora?
  - ¿Estarían dispuestos a contribuir a validar datos a cambio de acceso gratuito?

---

#### 4.7.5 Preguntas abiertas críticas

> Estas deben quedar respondidas al final de la investigación:

1. **¿Cuánto cuesta mantener el calendario actualizado por país/mes?** (benchmark vs. ingreso por usuario)
2. **¿Es el costo de mantenimiento el cuello de botella del negocio o es manejable?**
3. **¿Existe algún proveedor de datos que lo resuelva con una API a precio razonable?**
4. **¿La automatización es suficientemente confiable o siempre necesitamos revisión humana?**
5. **¿Qué pasa cuando el gobierno publica un cambio con 2 días de anticipación?** ¿Podemos garantizar que el usuario sea notificado a tiempo?

**Entregable:** Propuesta de modelo operativo de mantenimiento con costo estimado mensual por país.

---

## 5. Madrigueras de Conejo (Rabbit Holes)

> Estas son las trampas en las que podemos caer durante la investigación. Las marcamos ahora para evitarlas.

### 🐇 Querer cubrir todos los países desde el inicio
La tentación será construir la base de datos tributaria completa para 50 países. **No.** La investigación debe validar primero 3-5 países donde el problema sea más agudo y el mercado más accesible.

### 🐇 Intentar resolver la declaración, no solo el recordatorio
El sistema que estamos investigando es de **notificación y calendario**, no de llenado de formularios. Eso es un producto diferente (TaxJar, Taxfix). Nuestro scope es: "¿cuándo debo presentar?" — no "¿cómo presento?".

### 🐇 Diseñar el modelo de datos perfecto antes de validar
El modelo de datos tributarios puede ser extremadamente complejo. La investigación debe buscar el modelo **mínimo suficiente**, no el definitivo. Usaremos un spreadsheet en fase de investigación, no una base de datos relacional.

### 🐇 Asumir que las reglas tributarias son estables
Las leyes fiscales cambian constantemente. Parte de la investigación debe responder: **¿quién mantiene los datos después del lanzamiento?** ¿Equipo interno? ¿Scraping automatizado? ¿Alianzas con firmas contables?

### 🐇 Construir integraciones antes de validar el canal
No construir integraciones con calendarios (Google Calendar, Outlook) ni con softwares contables hasta validar que los usuarios lo piden activamente.

---

## 6. No-gos

> Lo que explícitamente **NO** investigaremos en este ciclo.

- ❌ Automatización de la declaración o pago de impuestos (out of scope)
- ❌ Integración con organismos gubernamentales (APIs del SAT, DIAN, etc.) en esta fase
- ❌ Soporte para más de 10 países en la investigación inicial
- ❌ Funcionalidad de contabilidad o facturación
- ❌ Blockchain / tokenización de documentos fiscales
- ❌ IA generativa para asesoría fiscal (riesgo legal demasiado alto sin investigación legal previa)

---

## 7. Plan de 6 Semanas

### Semana 1-2: Exploración y delimitación
- Investigación regulatoria de los 10 países seleccionados
- Primera ronda de entrevistas a usuarios (5)
- Análisis de competidores (desk research)

### Semana 3-4: Profundidad
- Completar entrevistas (15 total) — incluir a contadores sobre cómo ellos rastrean cambios fiscales
- Deep-dive técnico: modelo de datos + evaluación de stack + factibilidad de scraping
- Investigación legal (consulta con 1-2 abogados fiscales)
- Completar mapa competitivo
- Benchmarks de cómo TaxJar, Avalara y otros mantienen sus datos actualizados
- Contactar proveedores de datos tributarios (IBFD, Thomson Reuters) para cotizaciones

### Semana 5: Síntesis
- Encuesta cuantitativa
- Draft del modelo de negocio
- Identificar los 3 países para el MVP
- Definir el modelo operativo de mantenimiento (manual / scraping / alianza / híbrido)
- Estimar costo mensual de mantenimiento por país

### Semana 6: Decisión y Pitch para construcción
- Consolidar hallazgos en un documento de decisión
- Presentar en betting table: ¿apostamos por construirlo?
- Si sí: definir el Pitch de construcción del MVP

---

## 8. Criterios de Decisión (Go / No-go)

Al finalizar el ciclo de 6 semanas, presentamos en la **betting table** con estos criterios:

| Criterio                                                    | Umbral Go                              |
|-------------------------------------------------------------|----------------------------------------|
| % de entrevistados que confirman el problema                | > 70%                                 |
| Willingness to Pay promedio                                 | > $10 USD/mes                         |
| Países con datos tributarios estructurables                 | Al menos 5 de los 10 investigados      |
| Riesgo legal clasificado como                               | Manejable con disclaimers adecuados    |
| Modelo de negocio con margen positivo                       | En escenario conservador a 18 meses    |
| Differenciación vs. competidores identificada               | Al menos 2 vectores claros             |
| Modelo de mantenimiento del calendario definido             | Costo mensual estimado y viable        |
| Fuente de actualizaciones identificada para cada país MVP   | Al menos 1 estrategia por país         |

---

## 9. Equipo de Investigación Sugerido

| Rol                        | Responsabilidad                                     | Dedicación     |
|----------------------------|-----------------------------------------------------|----------------|
| Product Researcher (lead)  | Coordinar, síntesis, entrevistas                   | Tiempo completo |
| Experto fiscal             | Mapear obligaciones por país, revisar viabilidad   | Part-time (consultor) |
| Engineer (técnico)         | Evaluar stack, modelo de datos, factibilidad       | 50%             |
| Abogado fiscal             | Memorando legal                                     | Consultoría puntual |
| UX Researcher              | Entrevistas de usuario, encuesta                   | Part-time       |

---

## 10. Recursos y Referencias

### Fuentes de datos tributarios a explorar
- [OECD Tax Database](https://www.oecd.org/tax/tax-policy/tax-database/)
- [IBFD Country Surveys](https://ibfd.org)
- [Tax Foundation International Tax Competitiveness Index](https://taxfoundation.org)
- [CIAT - Centro Interamericano de Administraciones Tributarias](https://www.ciat.org)
- [World Bank Doing Business - Tax section](https://www.doingbusiness.org)

### Referencias Shape Up
- [Shape Up by Ryan Singer (Basecamp)](https://basecamp.com/shapeup)
- Ciclo de 6 semanas → 2 semanas cooldown antes del siguiente ciclo de construcción

---

*Este pitch es una herramienta viva. Actualizar conforme avance la investigación.*

*Próxima revisión: Semana 3 del ciclo de investigación.*
