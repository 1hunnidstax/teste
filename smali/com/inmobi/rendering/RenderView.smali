.class public final Lcom/inmobi/rendering/RenderView;
.super Landroid/webkit/WebView;
.source "RenderView.java"

# interfaces
.implements Lcom/inmobi/ads/AdContainer;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "ViewConstructor",
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/RenderView$RenderViewState;,
        Lcom/inmobi/rendering/RenderView$a;
    }
.end annotation


# static fields
.field static final a:Lcom/inmobi/rendering/RenderView$a;

.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final J:Ljava/lang/Object;

.field private final K:Ljava/lang/Object;

.field private L:Z

.field private M:Z

.field private N:Landroid/view/View;

.field private O:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private P:I

.field private Q:Z

.field private R:Ljava/util/Set;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bd;",
            ">;"
        }
    .end annotation
.end field

.field private S:Lcom/inmobi/ads/ViewableAd;

.field private final T:Lcom/inmobi/ads/AdContainer$a;

.field private final U:Landroid/webkit/WebViewClient;

.field private final V:Landroid/webkit/WebChromeClient;

.field private c:Lcom/inmobi/rendering/RenderView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/rendering/mraid/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/inmobi/rendering/RenderView$a;

.field private j:Lcom/inmobi/rendering/RenderView$RenderViewState;

.field private k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

.field private l:Lcom/inmobi/rendering/mraid/e;

.field private m:Lcom/inmobi/rendering/mraid/h;

.field private n:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

.field private o:Lcom/inmobi/rendering/mraid/k;

.field private p:Lcom/inmobi/rendering/a;

.field private q:Lcom/inmobi/ads/c$f;

.field private r:Lcom/inmobi/ads/c$d;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Lcom/inmobi/rendering/mraid/c;

.field private v:Lcom/inmobi/rendering/mraid/j;

.field private w:Lcom/inmobi/rendering/mraid/i;

.field private x:Lorg/json/JSONObject;

.field private y:Lorg/json/JSONObject;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/inmobi/rendering/RenderView$1;

    invoke-direct {v0}, Lcom/inmobi/rendering/RenderView$1;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/RenderView;->a:Lcom/inmobi/rendering/RenderView$a;

    .line 167
    const-class v0, Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Ljava/util/Set;)V
    .locals 4
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/AdContainer$RenderingProperties;",
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bd;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Ljava/util/List;

    .line 184
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->g:Z

    .line 189
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/List;

    .line 207
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->z:Z

    .line 208
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    .line 210
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->B:Z

    .line 211
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 212
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    .line 213
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->E:Z

    .line 214
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->F:Z

    .line 215
    iput-object v3, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    .line 216
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->H:Z

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Ljava/lang/Object;

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Ljava/lang/Object;

    .line 229
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->M:Z

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/RenderView;->P:I

    .line 239
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->Q:Z

    .line 1334
    new-instance v0, Lcom/inmobi/rendering/RenderView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$4;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->T:Lcom/inmobi/ads/AdContainer$a;

    .line 1378
    new-instance v0, Lcom/inmobi/rendering/RenderView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$5;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->U:Landroid/webkit/WebViewClient;

    .line 1511
    new-instance v0, Lcom/inmobi/rendering/RenderView$6;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$6;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->V:Landroid/webkit/WebChromeClient;

    .line 247
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Ljava/lang/ref/WeakReference;

    .line 250
    :cond_0
    iput-object v3, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView;

    .line 251
    iput-object p2, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 252
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 253
    iput-object p3, p0, Lcom/inmobi/rendering/RenderView;->R:Ljava/util/Set;

    .line 254
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->N:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->O:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.broadcastEvent(\'sizeChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Z)Z
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$a;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/rendering/RenderView;Z)Z
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->H:Z

    return p1
.end method

.method static synthetic c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/AdContainer$RenderingProperties;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    if-ne v0, p1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    .line 457
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    :cond_2
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->e(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method private e(Z)V
    .locals 2

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    if-nez v0, :cond_0

    .line 466
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    .line 467
    if-nez p1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->o:Lcom/inmobi/rendering/mraid/k;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/k;->a(Landroid/content/Context;)V

    .line 472
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->a(Z)V

    .line 474
    :cond_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$a;->d(Lcom/inmobi/rendering/RenderView;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/inmobi/rendering/RenderView;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->s()V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.broadcastEvent(\'stateChange\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 997
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 999
    :goto_0
    return-object p1

    .line 998
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/inmobi/rendering/RenderView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/List;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1757
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->loadUrl(Ljava/lang/String;)V

    .line 1758
    return-void
.end method

.method static synthetic i(Lcom/inmobi/rendering/RenderView;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->H:Z

    return v0
.end method

.method static synthetic j(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->t()V

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 1762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1763
    return-void
.end method

.method static synthetic k(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic l(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->N:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/inmobi/rendering/RenderView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->O:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 495
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 498
    :cond_0
    return-void
.end method

.method private r()Z
    .locals 6

    .prologue
    .line 706
    new-instance v0, Lcom/inmobi/rendering/mraid/f;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/f;-><init>()V

    .line 707
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/f;->c()J

    move-result-wide v0

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v0, v2, v0

    .line 710
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/c$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 732
    const-string v0, "window.mraidview.detectAndBlockFraud(\'redirect\')"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 736
    const-string v0, "window.imaiview.broadcastEvent(\'ready\');"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 737
    const-string v0, "window.mraidview.broadcastEvent(\'ready\');"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method private u()Z
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 958
    invoke-static {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Ljava/lang/Object;)V

    .line 960
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    .line 961
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 962
    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Z)V

    .line 963
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 964
    iget v0, p0, Lcom/inmobi/rendering/RenderView;->P:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 965
    const/4 v0, 0x0

    iget v2, p0, Lcom/inmobi/rendering/RenderView;->P:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 969
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 970
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_2

    .line 971
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 978
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$a;->g(Lcom/inmobi/rendering/RenderView;)V

    goto :goto_0

    .line 974
    :cond_3
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_2

    .line 975
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->HIDDEN:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    goto :goto_1
.end method

.method private w()V
    .locals 2

    .prologue
    .line 1677
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1681
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 1682
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/e;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/e;->a()V

    .line 1683
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->v()V

    .line 1684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    goto :goto_0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1688
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_0

    .line 1697
    :goto_0
    return-void

    .line 1692
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 1693
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/h;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/h;->b()V

    .line 1694
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1695
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$a;->g(Lcom/inmobi/rendering/RenderView;)V

    .line 1696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    goto :goto_0
.end method

.method private y()V
    .locals 3

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/b;

    .line 1749
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/mraid/b;->cancel(Z)Z

    goto :goto_0

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1752
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/a/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1753
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1752
    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 1754
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1766
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v2, "disableHardwareAcceleration called."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    iput-boolean v3, p0, Lcom/inmobi/rendering/RenderView;->M:Z

    .line 1770
    const-string v0, "setLayerType"

    .line 1772
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1774
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1776
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1787
    :cond_0
    :goto_0
    return-void

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v3, "disableHardwareAcceleration failed."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1779
    :catch_1
    move-exception v0

    .line 1780
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v3, "disableHardwareAcceleration failed."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1781
    :catch_2
    move-exception v0

    .line 1782
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v3, "disableHardwareAcceleration failed."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1783
    :catch_3
    move-exception v0

    .line 1784
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v3, "disableHardwareAcceleration failed."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/AdContainer$EventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    sget-object v0, Lcom/inmobi/rendering/RenderView$7;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/AdContainer$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 634
    :goto_0
    :pswitch_0
    return-void

    .line 631
    :pswitch_1
    const-string v0, "inmobi.recordEvent(120,null);"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/c$f;Lcom/inmobi/ads/c$d;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 538
    iput-object p2, p0, Lcom/inmobi/rendering/RenderView;->q:Lcom/inmobi/ads/c$f;

    .line 539
    iput-object p3, p0, Lcom/inmobi/rendering/RenderView;->r:Lcom/inmobi/ads/c$d;

    .line 540
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    .line 541
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    .line 543
    const-string v0, "production"

    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 544
    invoke-static {v5}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/c$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/c$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$f;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setBackgroundColor(I)V

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/c$d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    new-instance v0, Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/c$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c$d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/c$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$d;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/c$d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/c$d;->c()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/rendering/mraid/g;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->a()V

    .line 558
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 559
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setImportantForAccessibility(I)V

    .line 562
    :cond_3
    invoke-virtual {p0, v4}, Lcom/inmobi/rendering/RenderView;->setScrollContainer(Z)V

    .line 563
    invoke-virtual {p0, v4}, Lcom/inmobi/rendering/RenderView;->setVerticalScrollBarEnabled(Z)V

    .line 564
    invoke-virtual {p0, v4}, Lcom/inmobi/rendering/RenderView;->setHorizontalScrollBarEnabled(Z)V

    .line 568
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 569
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 572
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 573
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->U:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 576
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->V:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 578
    new-instance v0, Lcom/inmobi/rendering/a;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/rendering/a;-><init>(Lcom/inmobi/rendering/RenderView;Lcom/inmobi/ads/AdContainer$RenderingProperties;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->p:Lcom/inmobi/rendering/a;

    .line 579
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->p:Lcom/inmobi/rendering/a;

    const-string v1, "sdkController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/rendering/RenderView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    new-instance v0, Lcom/inmobi/rendering/mraid/e;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/e;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/e;

    .line 581
    new-instance v0, Lcom/inmobi/rendering/mraid/h;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/h;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/h;

    .line 582
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->n:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    .line 583
    new-instance v0, Lcom/inmobi/rendering/mraid/k;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/k;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->o:Lcom/inmobi/rendering/mraid/k;

    .line 585
    new-instance v0, Lcom/inmobi/rendering/mraid/c;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/c;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/mraid/c;

    .line 586
    new-instance v0, Lcom/inmobi/rendering/mraid/j;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/j;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->v:Lcom/inmobi/rendering/mraid/j;

    .line 587
    new-instance v0, Lcom/inmobi/rendering/mraid/i;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/i;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/i;

    .line 588
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 715
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    const-string v1, ""

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/rendering/RenderView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1322
    const-string v0, "postToSocial"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v2, "postToSocial called even when it is not supported"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :goto_0
    return-void

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->o:Lcom/inmobi/rendering/mraid/k;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/rendering/mraid/k;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastEvent(\'error\',\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 1006
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p3, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1007
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1024
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1025
    const-string v1, "command"

    const-string v2, "openExternal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string v1, "scheme"

    invoke-static {p2}, Lcom/inmobi/ads/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    const-string v2, "ads"

    const-string v3, "CreativeInvokedAction"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1029
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$a;->h(Lcom/inmobi/rendering/RenderView;)V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Successful\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    invoke-virtual {p0, p2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve URI ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/inmobi/rendering/RenderView;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error message in processing openExternal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    if-eqz p4, :cond_0

    .line 1012
    invoke-virtual {p0, p1, p2, p4, v5}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :catch_1
    move-exception v0

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No app can handle the URI ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/inmobi/rendering/RenderView;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error message in processing openExternal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    if-eqz p4, :cond_0

    .line 1019
    invoke-virtual {p0, p1, p2, p4, v5}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->o:Lcom/inmobi/rendering/mraid/k;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/inmobi/rendering/mraid/k;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 766
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.broadcastEvent(\'viewableChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->y()V

    .line 939
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->n:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a()V

    .line 941
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_1

    .line 942
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->w()V

    .line 953
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 955
    return-void

    .line 943
    :cond_1
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_2

    .line 944
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->x()V

    goto :goto_0

    .line 945
    :cond_2
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_0

    .line 946
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->HIDDEN:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 947
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 948
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->v()V

    goto :goto_0

    .line 950
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 793
    :goto_0
    return-void

    .line 770
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 771
    new-instance v1, Lcom/inmobi/rendering/RenderView$2;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/RenderView$2;-><init>(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 796
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 797
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v2, "Media playback is only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 802
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v2, "Media playback is  not allowed before it is visible! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v0, "Media playback is  not allowed before it is visible! Ignoring request ..."

    const-string v1, "playVideo"

    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAdActiveFlag(Z)V

    .line 808
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->n:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, p2, v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 810
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 811
    const-string v1, "command"

    const-string v2, "playVideo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v1, "scheme"

    invoke-static {p1}, Lcom/inmobi/ads/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    const-string v2, "ads"

    const-string v3, "CreativeInvokedAction"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1035
    if-eqz p3, :cond_0

    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1036
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called with invalid url ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v0, "Invalid URL"

    invoke-virtual {p0, p2, v0, p1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :goto_0
    return-void

    .line 1041
    :cond_1
    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "play.google.com"

    .line 1042
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "market.android.com"

    .line 1043
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "market%3A%2F%2F"

    .line 1044
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1045
    invoke-static {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/rendering/RenderView;)V

    .line 1047
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1048
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Successful\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-virtual {p0, p2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1056
    const-string v1, "command"

    const-string v2, "openEmbedded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string v1, "scheme"

    invoke-static {p2}, Lcom/inmobi/ads/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    const-string v2, "ads"

    const-string v3, "CreativeInvokedAction"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1061
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 881
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->setCloseRegionDisabled(Z)V

    .line 882
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 884
    if-eqz v0, :cond_0

    .line 886
    const v1, 0xfffb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/CustomView;

    check-cast v0, Lcom/inmobi/rendering/CustomView;

    .line 887
    if-eqz v0, :cond_0

    .line 888
    iget-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->E:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setVisibility(I)V

    .line 891
    :cond_0
    return-void

    .line 888
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    .line 863
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 817
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_0

    .line 818
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Render view state must be either DEFAULT or RESIZED to admit the expand request. Current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :goto_0
    return-void

    .line 822
    :cond_0
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 823
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/e;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/rendering/mraid/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestLayout()V

    .line 825
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->invalidate()V

    .line 826
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 827
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusable(Z)V

    .line 828
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusableInTouchMode(Z)V

    .line 829
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestFocus()Z

    .line 831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 832
    const-string v1, "command"

    const-string v2, "expand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string v1, "scheme"

    invoke-static {p1}, Lcom/inmobi/ads/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    const-string v2, "ads"

    const-string v3, "CreativeInvokedAction"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1700
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveContent called: content ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const-string v0, "saveContent"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1702
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v2, "saveContent called despite the fact that it is not supported"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1705
    :try_start_0
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1706
    const-string v1, "reason"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1709
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSaveContentResult(\"saveContent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \'failed\', \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1711
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    :goto_1
    return-void

    .line 1715
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/a/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 1716
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1717
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1718
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v2, "Cannot create temp directory to save "

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1721
    :try_start_1
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1722
    const-string v1, "reason"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1725
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSaveContentResult(\"saveContent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \'failed\', \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1728
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1732
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1733
    new-instance v0, Lcom/inmobi/rendering/mraid/b;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/rendering/mraid/b;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/RenderView;)V

    .line 1734
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 1723
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1707
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->setUseCustomClose(Z)V

    .line 895
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0xfffc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/CustomView;

    .line 900
    if-eqz v0, :cond_0

    .line 901
    iget-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->B:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setVisibility(I)V

    .line 904
    :cond_0
    return-void

    .line 901
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 907
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_0

    .line 908
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v2, "Render view state must be either DEFAULT or RESIZED to admit the resize request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :goto_0
    return-void

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/j;

    move-result-object v0

    if-nez v0, :cond_1

    .line 913
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v2, "Render view state can not resize with invalid resize properties"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :cond_1
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 918
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/h;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/h;->a()V

    .line 919
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestLayout()V

    .line 920
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->invalidate()V

    .line 921
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 922
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusable(Z)V

    .line 923
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusableInTouchMode(Z)V

    .line 924
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestFocus()Z

    .line 926
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 927
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$a;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 930
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 931
    const-string v1, "command"

    const-string v2, "resize"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string v1, "scheme"

    invoke-static {p1}, Lcom/inmobi/ads/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    const-string v2, "ads"

    const-string v3, "CreativeInvokedAction"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    return v0
.end method

.method public destroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 601
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 604
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 605
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/RenderView;->P:I

    .line 606
    const-string v0, "sdkController"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 607
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->y()V

    .line 608
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/ads/ViewableAd;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 617
    :cond_3
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/b;

    .line 1740
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1741
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/b;->cancel(Z)Z

    .line 1745
    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->z:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1797
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1799
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1836
    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .line 1799
    :sswitch_0
    const-string v4, "redirectFraudDetection"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "postToSocial"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v4, "playVideo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "inlineVideo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "html5video"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "saveContent"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "calendar"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "storePicture"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    .line 1808
    :pswitch_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 1809
    iget-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    if-eqz v2, :cond_3

    .line 1810
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1813
    :cond_2
    :goto_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTML5 video supported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1810
    goto :goto_2

    .line 1817
    :pswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v2, v4, :cond_4

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1819
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 1818
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    .line 1822
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1823
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 1825
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1827
    const-string v3, "android.permission.WRITE_CALENDAR"

    invoke-static {v3}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    .line 1828
    const-string v4, "android.permission.READ_CALENDAR"

    invoke-static {v4}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    .line 1830
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_1

    :cond_6
    move v0, v1

    goto/16 :goto_1

    .line 1833
    :pswitch_4
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_1

    .line 1799
    nop

    :sswitch_data_0
    .sparse-switch
        -0x706c8659 -> :sswitch_2
        -0x6235c69e -> :sswitch_3
        -0xaa104c2 -> :sswitch_6
        0x1b5f6cdd -> :sswitch_7
        0x59fa48d1 -> :sswitch_4
        0x61e1d43c -> :sswitch_5
        0x69ad837d -> :sswitch_0
        0x72856688 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public g()V
    .locals 1

    .prologue
    .line 728
    const-string v0, "window.mraidview.onUserInteraction();"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentPositionMonitor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Ljava/lang/Object;

    return-object v0
.end method

.method public getDataModel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultPositionMonitor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Ljava/lang/Object;

    return-object v0
.end method

.method public getExpandProperties()Lcom/inmobi/rendering/mraid/c;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/mraid/c;

    return-object v0
.end method

.method public getFullScreenActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->T:Lcom/inmobi/ads/AdContainer$a;

    return-object v0
.end method

.method public getListener()Lcom/inmobi/rendering/RenderView$a;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Lcom/inmobi/rendering/RenderView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$3;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    .line 1118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderView$a;

    goto :goto_0
.end method

.method public getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object v0
.end method

.method public getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->n:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    return-object v0
.end method

.method public getMraidConfig()Lcom/inmobi/ads/c$d;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->r:Lcom/inmobi/ads/c$d;

    return-object v0
.end method

.method public getMraidJsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1240
    const-string v0, "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var d=String(a);b[d]||(b[d]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var d in b)b[d].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}},\nInmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&window.imraidview.startListeningHeadphonePluggedEvents();\n\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent()}}catch(d){this.log(d)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\n\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent()}};this.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(d){}}};this.sendSaveContentResult=\nfunction(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var d=arguments[c],d=JSON.parse(d);b[c]=d}else b[c]=arguments[c];d=b[1];\"success\"!=d&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);window.imraid.broadcastEvent(b[0],b[1],b[2])}}},__im__iosNativeMessageHandler=void 0;\nwindow.webkit&&(window.webkit.messageHandlers&&window.webkit.messageHandlers.nativeMessageHandler)&&(__im__iosNativeMessageHandler=window.webkit.messageHandlers.nativeMessageHandler);\nvar __im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=\na)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){if(imIsObjValid(__im__iosNativeMessageHandler)){d={};d.command=a;d.scheme=this.urlScheme;for(var b={},c=1;c<arguments.length;c+=2)e=arguments[c+1],null!=e&&(b[arguments[c]]=\"\"+e);d.params=b}else for(var d=this.urlScheme+\"://\"+a,e,b=!0,c=1;c<arguments.length;c+=2)e=arguments[c+1],null!=e&&(b?(d+=\"?\",b=!1):d+=\"&\",d+=arguments[c]+\"=\"+escape(e));__im__iosNativeCall.executeNativeCall(d);return\"OK\"};this.nativeCallComplete=\nfunction(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.detectAndBlockFraud=function(d){a.isPossibleFraud()&&a.fireRedirectFraudBeacon(d);return!1};a.zeroPad=function(a){var e=\"\";10>a&&(e+=\"0\");return e+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",\na)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"use CustomClose: \"+e)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,e){c?b.push(a):(eval(a),e&&(c=!0))};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"executeNativeExpand: \"+e+\", URL = \"+a)}};a.setExpandProperties=\nfunction(d){try{d?this.props=d:d=null;if(\"undefined\"!=typeof d.lockOrientation&&null!=d.lockOrientation&&\"undefined\"!=typeof d.orientation&&null!=d.orientation){var e={};e.allowOrientationChange=!d.lockOrientation;e.forceOrientation=d.orientation;a.setOrientationProperties(e)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(d))}catch(b){imraidview.showAlert(\"executeNativesetExpandProperties: \"+b+\", props = \"+d)}};a.getExpandProperties=function(){try{return eval(\"(\"+sdkController.getExpandProperties(\"window.mraidview\")+\n\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+a)}};a.setOrientationProperties=function(d){try{d?(\"undefined\"!=typeof d.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=d.allowOrientationChange),\"undefined\"!=typeof d.forceOrientation&&(a.orientationProperties.forceOrientation=d.forceOrientation)):d=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(e){imraidview.showAlert(\"setOrientationProperties: \"+e+\", props = \"+\nd)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,allowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;a.setResizeProperties=function(d){var e,b;try{e=parseInt(d.width);b=parseInt(d.height);if(isNaN(e)||isNaN(b)||1>e||1>b)throw\"Invalid\";d.width=e;d.height=b;a.resizeProps=d;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(d))}catch(c){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\n\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+sdkController.getResizeProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"open: \"+e)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=\nfunction(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};a.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+\na)}};a.isViewable=function(){try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+a)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var e=\"\";null!=a&&(e=a);try{sdkController.playVideo(\"window.mraidview\",\ne)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(d){if(\"undefined\"===typeof JSON){var e=\"\",b;if(\"undefined\"==typeof d.length)return a.stringifyArg(d);for(b=0;b<d.length;b++)0<b&&(e+=\",\"),e+=a.stringifyArg(d[b]);return e+\"]\"}return JSON.stringify(d)};a.stringifyArg=function(a){var e,b,c;b=typeof a;e=\"\";if(\"number\"===b||\"boolean\"===b)e+=args;else if(a instanceof Array)e=e+\"[\"+a+\"]\";else if(a instanceof Object){b=!0;e+=\"{\";for(c in a)null!==a[c]&&(b||(e+=\",\"),e=e+\'\"\'+c+\'\":\',b=\ntypeof a[c],e=\"number\"===b||\"boolean\"===b?e+a[c]:\"function\"===typeof a[c]?e+\'\"\"\':a[c]instanceof Object?e+this.stringify(args[i][c]):e+\'\"\'+a[c]+\'\"\',b=!1);e+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,\'\\\\\"\'),e=e+\'\"\'+a+\'\"\';imraidview.showAlert(\"json:\"+e);return e};getPID=function(a){var e=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(e=a.id);return e};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\n\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(b){imraidview.showAlert(\"resize called in bridge\")}};a.createCalendarEvent=function(a){var e={};\"object\"!=typeof a&&window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects parameter\",\"createCalendarEvent\");if(\"string\"!=typeof a.start||\"string\"!=typeof a.end)window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects string parameters for start and end dates\",\"createCalendarEvent\");else{\"string\"!=typeof a.id&&\n(a.id=\"\");\"string\"!=typeof a.location&&(a.location=\"\");\"string\"!=typeof a.description&&(a.description=\"\");\"string\"!=typeof a.summary&&(a.summary=\"\");\"string\"==typeof a.status&&(\"pending\"==a.status||\"tentative\"==a.status||\"confirmed\"==a.status||\"cancelled\"==a.status)||(a.status=\"\");\"string\"==typeof a.transparency&&(\"opaque\"==a.transparency||\"transparent\"==a.transparency)||(a.transparency=\"\");if(null==a.recurrence||\"\"==a.recurrence)e={};else{\"string\"==typeof a.summary&&(e.frequency=a.recurrence.frequency);\nnull!=a.recurrence.interval&&(e.interval=a.recurrence.interval);\"string\"==typeof a.summary&&(e.expires=a.recurrence.expires);null!=a.recurrence.exceptionDates&&(e.exceptionDates=a.recurrence.exceptionDates);if(null!=a.recurrence.daysInWeek){var b=formatDaysInWeek(a.recurrence.daysInWeek);null!=b?e.daysInWeek=b:imraidview.showAlert(\"daysInWeek invalid format \")}e.daysInMonth=a.recurrence.daysInMonth;e.daysInYear=a.recurrence.daysInYear;e.weeksInMonth=a.recurrence.weeksInMonth;e.monthsInYear=a.recurrence.monthsInYear}\"string\"!=\ntypeof a.reminder&&(a.reminder=\"\");try{sdkController.createCalendarEvent(\"window.mraidview\",a.id,a.start,a.end,a.location,a.description,a.summary,a.status,a.transparency,JSON.stringify(e),a.reminder)}catch(c){sdkController.createCalendarEvent(\"window.mraidview\",a.start,a.end,a.location,a.description)}}};formatDaysInWeek=function(a){try{if(0!=a.length){for(var e=0;e<a.length;e++)switch(a[e]){case 0:a[e]=\"SU\";break;case 1:a[e]=\"MO\";break;case 2:a[e]=\"TU\";break;case 3:a[e]=\"WE\";break;case 4:a[e]=\"TH\";\nbreak;case 5:a[e]=\"FR\";break;case 6:a[e]=\"SA\";break;default:return null}return a}}catch(b){}return null};a.storePicture=function(b){console.log(\"bridge: storePicture\");if(\"string\"!=typeof b)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled by user.\",\"storePicture\"),!1):sdkController.storePicture(\"window.mraidview\",\nb);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.fireMediaTrackingEvent=function(a,e){};a.fireMediaErrorEvent=function(a,e){};a.fireMediaTimeUpdateEvent=function(a,e,b){};a.fireMediaCloseEvent=function(a,e,b){};a.fireMediaVolumeChangeEvent=function(a,e,b){};a.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1;b.isAdShownToUser=!1;b.onUserInteraction=function(){c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!b.isAdShownToUser||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var e={};e.trigger=a;e.isAdShown=b.isAdShownToUser.toString();inmobi.recordEvent(135,e)}};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};a.addEventListener(\"viewableChange\",\nfunction(a){a&&!b.isAdShownToUser&&(b.isAdShownToUser=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=b.getExpandProperties;a.setExpandProperties=function(c){\"undefined\"!=typeof c&&(\"useCustomClose\"in c&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(c.useCustomClose);b.setExpandProperties(c)};a.getResizeProperties=b.getResizeProperties;a.setResizeProperties=b.setResizeProperties;a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=\nb.setOrientationProperties;a.expand=b.expand;a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){b.detectAndBlockFraud(\"mraid.createCalendarEvent\")||b.createCalendarEvent(a)};a.open=function(c){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(c))};a.resize=b.resize;a.getVersion=function(){return\"2.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=function(a){b.playVideo(a)};\na.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):b.storePicture(c)}})();\n(function(){var a=window.imraidview={},b,c=!0;a.setOrientationProperties=function(e){try{e?(\"undefined\"!=typeof e.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=e.allowOrientationChange),\"undefined\"!=typeof e.forceOrientation&&(mraidview.orientationProperties.forceOrientation=e.forceOrientation),\"undefined\"!=typeof e.direction&&(mraidview.orientationProperties.direction=e.direction)):e=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(b){a.showAlert(\"setOrientationProperties: \"+\nb+\", props = \"+e)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.getWindowOrientation=function(){var a=window.orientation;0>a&&(a+=360);window.innerWidth!==this.previousWidth&&0==a&&window.innerWidth>window.innerHeight&&(a=90);return a};var d=function(){window.setTimeout(function(){if(c||a.getWindowOrientation()!==b)c=!1,b=a.getWindowOrientation(),sdkController.onOrientationChange(\"window.imraidview\"),imraid.broadcastEvent(\"orientationChange\",b)},200)};a.registerOrientationListener=\nfunction(){b=a.getWindowOrientation();window.addEventListener(\"resize\",d,!1);window.addEventListener(\"orientationchange\",d,!1)};a.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",d,!1);window.removeEventListener(\"orientationchange\",d,!1)};window.imraidview.registerOrientationListener();a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var c={};c.name=a;var d=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=\nb&&\"\"!=b)&&(d=d+\"_\"+b);window.imraid.broadcastEvent(d,c)};a.fireMediaErrorEvent=function(a,b){var c={name:\"error\"};c.code=b;var d=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(d=d+\"_\"+a);window.imraid.broadcastEvent(d,c)};a.fireMediaTimeUpdateEvent=function(a,b,c){var d={name:\"timeupdate\",target:{}};d.target.currentTime=b;d.target.duration=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.saveContent=function(a,\nb,c){window.imraid.addEventListener(\"saveContent_\"+a,c);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",a)};a.fireGalleryImageSelectedEvent=function(a,b,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"galleryImageSelected\",d)};a.fireCameraPictureCatpturedEvent=function(a,\nb,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"cameraPictureCaptured\",d)};a.fireMediaCloseEvent=function(a,b,c){var d={name:\"close\"};d.viaUserInteraction=b;d.target={};d.target.currentTime=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireMediaVolumeChangeEvent=function(a,b,c){var d={name:\"volumechange\",target:{}};d.target.volume=b;d.target.muted=c;b=\"inmobi_media_\"+d.name;\n\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=function(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(b,c){try{600<=getSdkVersionInt()?sdkController.openExternal(\"window.imraidview\",\nb,c):sdkController.openExternal(\"window.imraidview\",b)}catch(d){a.showAlert(\"openExternal: \"+d)}};a.log=function(b){try{sdkController.log(\"window.imraidview\",b)}catch(c){a.showAlert(\"log: \"+c)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(b){try{sdkController.asyncPing(\"window.imraidview\",b)}catch(c){a.showAlert(\"asyncPing: \"+c)}};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=function(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};\na.startListeningDeviceVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningDeviceVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};a.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};getSdkVersionInt=\nfunction(){for(var b=a.getSdkVersion().split(\".\"),c=b.length,d=\"\",f=0;f<c;f++)d+=b[f];return parseInt(d)};a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");if(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(a,b,c,d){a=parseInt(a);isNaN(a)?window.imraid.broadcastEvent(\"error\",\n\"socialType must be an integer\",\"postToSocial\"):(\"string\"!=typeof b&&(b=\"\"),\"string\"!=typeof c&&(c=\"\"),\"string\"!=typeof d&&(d=\"\"),sdkController.postToSocial(\"window.imraidview\",a,b,c,d))};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",null);else try{sdkController.incentCompleted(\"window.imraidview\",JSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(b){a.showAlert(\"getOrientation: \"+\nb)}};a.acceptAction=function(b){try{sdkController.acceptAction(\"window.imraidview\",mraidview.stringify(b))}catch(c){a.showAlert(\"acceptAction: \"+c+\", params = \"+b)}};a.rejectAction=function(b){try{sdkController.rejectAction(\"window.imraidview\",mraidview.stringify(b))}catch(c){a.showAlert(\"rejectAction: \"+c+\", params = \"+b)}};a.updateToPassbook=function(b){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=\nsdkController.isDeviceMuted(\"window.imraidview\")};a.getDeviceVolume=function(){return 603>=getSdkVersionInt()?-1:sdkController.getDeviceVolume(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,arguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\n\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",a)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};a.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,d,e){var k=arguments.length,h,f=null;if(3>k){if(\"function\"===typeof arguments[k-1])h=arguments[k-1];else return;f={reason:1}}else a.saveContentIDMap[c]&&(h=arguments[2],f={reason:11,url:arguments[1]});\"function\"!==!h&&(f?(window.imraid.addEventListener(\"saveContent_failed_\"+\nc,h),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(f))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,d,e)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.getVendorName=function(){return\"inmobi\"};a.openExternal=function(a,d){mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a,d)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):b.updateToPassbook(c))};a.postToSocial=function(a,d,e,k){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||\nb.postToSocial(a,d,e,k)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=function(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.supports=function(a){return b.supports(a)};a.isDeviceMuted=function(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=function(){return b.getDeviceVolume()};\na.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(d){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a,c){600<=getSdkVersionInt()?sdkController.openExternal(\"window.imaiview\",a,c):sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||\nnull==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",JSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var e=-1;try{e=a.indexOf(b)}catch(k){}return e};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,d,e){if(!imIsObjValid(d)||!imIsObjValid(e))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+d+\",\"+e):a+(\"&u-tap-o=\"+d+\",\"+e));return a};b.performAdClick=function(a,d){d=d||event;if(imIsObjValid(a)){var e=a.clickConfig,k=a.landingConfig;if(!imIsObjValid(e)&&!imIsObjValid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,m=null,n=null,l=null,q=null,p=null;if(imIsObjValid(d))try{m=d.changedTouches[0].pageX,n=d.changedTouches[0].pageY}catch(r){n=\nm=0}imIsObjValid(k)?imIsObjValid(e)?(l=k.url,q=k.fallbackUrl,p=k.urlType,h=e.url,f=e.pingWV,g=e.fr):(l=k.url,p=k.urlType):(l=e.url,p=e.urlType);e=b.getPlatform();try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;if(\"number\"!=typeof p||null==p)p=0;h=b.appendTapParams(h,m,n);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjValid(h)||\n(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==e?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+e);break;default:b.openExternal(l,q)}else b.log(\"Landing url provided is null.\")}catch(s){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,d){d=d||event;if(imIsObjValid(a)){var e=a.clickConfig,k=a.landingConfig;\nif(!imIsObjValid(e)&&!imIsObjValid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,m=null,n=null;if(imIsObjValid(d))try{m=d.changedTouches[0].pageX,n=d.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(e)&&(h=e.url,f=e.pingWV,g=e.fr);try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=\n!0;if(0>f||1<f)f=!0;h=b.appendTapParams(h,m,n);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");b.onUserInteraction(k)}catch(q){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=function(b){mraidview.detectAndBlockFraud(\"imai.openEmbedded\")||a.openEmbedded(b)};\nb.openExternal=function(b,d){mraidview.detectAndBlockFraud(\"imai.openExternal\")||a.openExternal(b,d)};b.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.loadSKStore=a.loadSKStore;b.showSKStore=function(b){mraidview.detectAndBlockFraud(\"imai.showSKStore\")||a.showSKStore(b)};b.ios.openItunesProductView=function(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;\nb.fireAdFailed=a.fireAdFailed})();"

    .line 1299
    new-instance v0, Lcom/inmobi/rendering/mraid/f;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/f;-><init>()V

    .line 1300
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 1302
    if-nez v0, :cond_0

    .line 1303
    const-string v0, "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var d=String(a);b[d]||(b[d]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var d in b)b[d].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}},\nInmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&window.imraidview.startListeningHeadphonePluggedEvents();\n\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent()}}catch(d){this.log(d)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\n\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent()}};this.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(d){}}};this.sendSaveContentResult=\nfunction(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var d=arguments[c],d=JSON.parse(d);b[c]=d}else b[c]=arguments[c];d=b[1];\"success\"!=d&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);window.imraid.broadcastEvent(b[0],b[1],b[2])}}},__im__iosNativeMessageHandler=void 0;\nwindow.webkit&&(window.webkit.messageHandlers&&window.webkit.messageHandlers.nativeMessageHandler)&&(__im__iosNativeMessageHandler=window.webkit.messageHandlers.nativeMessageHandler);\nvar __im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=\na)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){if(imIsObjValid(__im__iosNativeMessageHandler)){d={};d.command=a;d.scheme=this.urlScheme;for(var b={},c=1;c<arguments.length;c+=2)e=arguments[c+1],null!=e&&(b[arguments[c]]=\"\"+e);d.params=b}else for(var d=this.urlScheme+\"://\"+a,e,b=!0,c=1;c<arguments.length;c+=2)e=arguments[c+1],null!=e&&(b?(d+=\"?\",b=!1):d+=\"&\",d+=arguments[c]+\"=\"+escape(e));__im__iosNativeCall.executeNativeCall(d);return\"OK\"};this.nativeCallComplete=\nfunction(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.detectAndBlockFraud=function(d){a.isPossibleFraud()&&a.fireRedirectFraudBeacon(d);return!1};a.zeroPad=function(a){var e=\"\";10>a&&(e+=\"0\");return e+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",\na)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"use CustomClose: \"+e)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,e){c?b.push(a):(eval(a),e&&(c=!0))};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"executeNativeExpand: \"+e+\", URL = \"+a)}};a.setExpandProperties=\nfunction(d){try{d?this.props=d:d=null;if(\"undefined\"!=typeof d.lockOrientation&&null!=d.lockOrientation&&\"undefined\"!=typeof d.orientation&&null!=d.orientation){var e={};e.allowOrientationChange=!d.lockOrientation;e.forceOrientation=d.orientation;a.setOrientationProperties(e)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(d))}catch(b){imraidview.showAlert(\"executeNativesetExpandProperties: \"+b+\", props = \"+d)}};a.getExpandProperties=function(){try{return eval(\"(\"+sdkController.getExpandProperties(\"window.mraidview\")+\n\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+a)}};a.setOrientationProperties=function(d){try{d?(\"undefined\"!=typeof d.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=d.allowOrientationChange),\"undefined\"!=typeof d.forceOrientation&&(a.orientationProperties.forceOrientation=d.forceOrientation)):d=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(e){imraidview.showAlert(\"setOrientationProperties: \"+e+\", props = \"+\nd)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,allowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;a.setResizeProperties=function(d){var e,b;try{e=parseInt(d.width);b=parseInt(d.height);if(isNaN(e)||isNaN(b)||1>e||1>b)throw\"Invalid\";d.width=e;d.height=b;a.resizeProps=d;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(d))}catch(c){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\n\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+sdkController.getResizeProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"open: \"+e)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=\nfunction(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};a.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+\na)}};a.isViewable=function(){try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+a)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var e=\"\";null!=a&&(e=a);try{sdkController.playVideo(\"window.mraidview\",\ne)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(d){if(\"undefined\"===typeof JSON){var e=\"\",b;if(\"undefined\"==typeof d.length)return a.stringifyArg(d);for(b=0;b<d.length;b++)0<b&&(e+=\",\"),e+=a.stringifyArg(d[b]);return e+\"]\"}return JSON.stringify(d)};a.stringifyArg=function(a){var e,b,c;b=typeof a;e=\"\";if(\"number\"===b||\"boolean\"===b)e+=args;else if(a instanceof Array)e=e+\"[\"+a+\"]\";else if(a instanceof Object){b=!0;e+=\"{\";for(c in a)null!==a[c]&&(b||(e+=\",\"),e=e+\'\"\'+c+\'\":\',b=\ntypeof a[c],e=\"number\"===b||\"boolean\"===b?e+a[c]:\"function\"===typeof a[c]?e+\'\"\"\':a[c]instanceof Object?e+this.stringify(args[i][c]):e+\'\"\'+a[c]+\'\"\',b=!1);e+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,\'\\\\\"\'),e=e+\'\"\'+a+\'\"\';imraidview.showAlert(\"json:\"+e);return e};getPID=function(a){var e=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(e=a.id);return e};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\n\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(b){imraidview.showAlert(\"resize called in bridge\")}};a.createCalendarEvent=function(a){var e={};\"object\"!=typeof a&&window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects parameter\",\"createCalendarEvent\");if(\"string\"!=typeof a.start||\"string\"!=typeof a.end)window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects string parameters for start and end dates\",\"createCalendarEvent\");else{\"string\"!=typeof a.id&&\n(a.id=\"\");\"string\"!=typeof a.location&&(a.location=\"\");\"string\"!=typeof a.description&&(a.description=\"\");\"string\"!=typeof a.summary&&(a.summary=\"\");\"string\"==typeof a.status&&(\"pending\"==a.status||\"tentative\"==a.status||\"confirmed\"==a.status||\"cancelled\"==a.status)||(a.status=\"\");\"string\"==typeof a.transparency&&(\"opaque\"==a.transparency||\"transparent\"==a.transparency)||(a.transparency=\"\");if(null==a.recurrence||\"\"==a.recurrence)e={};else{\"string\"==typeof a.summary&&(e.frequency=a.recurrence.frequency);\nnull!=a.recurrence.interval&&(e.interval=a.recurrence.interval);\"string\"==typeof a.summary&&(e.expires=a.recurrence.expires);null!=a.recurrence.exceptionDates&&(e.exceptionDates=a.recurrence.exceptionDates);if(null!=a.recurrence.daysInWeek){var b=formatDaysInWeek(a.recurrence.daysInWeek);null!=b?e.daysInWeek=b:imraidview.showAlert(\"daysInWeek invalid format \")}e.daysInMonth=a.recurrence.daysInMonth;e.daysInYear=a.recurrence.daysInYear;e.weeksInMonth=a.recurrence.weeksInMonth;e.monthsInYear=a.recurrence.monthsInYear}\"string\"!=\ntypeof a.reminder&&(a.reminder=\"\");try{sdkController.createCalendarEvent(\"window.mraidview\",a.id,a.start,a.end,a.location,a.description,a.summary,a.status,a.transparency,JSON.stringify(e),a.reminder)}catch(c){sdkController.createCalendarEvent(\"window.mraidview\",a.start,a.end,a.location,a.description)}}};formatDaysInWeek=function(a){try{if(0!=a.length){for(var e=0;e<a.length;e++)switch(a[e]){case 0:a[e]=\"SU\";break;case 1:a[e]=\"MO\";break;case 2:a[e]=\"TU\";break;case 3:a[e]=\"WE\";break;case 4:a[e]=\"TH\";\nbreak;case 5:a[e]=\"FR\";break;case 6:a[e]=\"SA\";break;default:return null}return a}}catch(b){}return null};a.storePicture=function(b){console.log(\"bridge: storePicture\");if(\"string\"!=typeof b)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled by user.\",\"storePicture\"),!1):sdkController.storePicture(\"window.mraidview\",\nb);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.fireMediaTrackingEvent=function(a,e){};a.fireMediaErrorEvent=function(a,e){};a.fireMediaTimeUpdateEvent=function(a,e,b){};a.fireMediaCloseEvent=function(a,e,b){};a.fireMediaVolumeChangeEvent=function(a,e,b){};a.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1;b.isAdShownToUser=!1;b.onUserInteraction=function(){c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!b.isAdShownToUser||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var e={};e.trigger=a;e.isAdShown=b.isAdShownToUser.toString();inmobi.recordEvent(135,e)}};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};a.addEventListener(\"viewableChange\",\nfunction(a){a&&!b.isAdShownToUser&&(b.isAdShownToUser=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=b.getExpandProperties;a.setExpandProperties=function(c){\"undefined\"!=typeof c&&(\"useCustomClose\"in c&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(c.useCustomClose);b.setExpandProperties(c)};a.getResizeProperties=b.getResizeProperties;a.setResizeProperties=b.setResizeProperties;a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=\nb.setOrientationProperties;a.expand=b.expand;a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){b.detectAndBlockFraud(\"mraid.createCalendarEvent\")||b.createCalendarEvent(a)};a.open=function(c){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(c))};a.resize=b.resize;a.getVersion=function(){return\"2.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=function(a){b.playVideo(a)};\na.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):b.storePicture(c)}})();\n(function(){var a=window.imraidview={},b,c=!0;a.setOrientationProperties=function(e){try{e?(\"undefined\"!=typeof e.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=e.allowOrientationChange),\"undefined\"!=typeof e.forceOrientation&&(mraidview.orientationProperties.forceOrientation=e.forceOrientation),\"undefined\"!=typeof e.direction&&(mraidview.orientationProperties.direction=e.direction)):e=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(b){a.showAlert(\"setOrientationProperties: \"+\nb+\", props = \"+e)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.getWindowOrientation=function(){var a=window.orientation;0>a&&(a+=360);window.innerWidth!==this.previousWidth&&0==a&&window.innerWidth>window.innerHeight&&(a=90);return a};var d=function(){window.setTimeout(function(){if(c||a.getWindowOrientation()!==b)c=!1,b=a.getWindowOrientation(),sdkController.onOrientationChange(\"window.imraidview\"),imraid.broadcastEvent(\"orientationChange\",b)},200)};a.registerOrientationListener=\nfunction(){b=a.getWindowOrientation();window.addEventListener(\"resize\",d,!1);window.addEventListener(\"orientationchange\",d,!1)};a.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",d,!1);window.removeEventListener(\"orientationchange\",d,!1)};window.imraidview.registerOrientationListener();a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var c={};c.name=a;var d=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=\nb&&\"\"!=b)&&(d=d+\"_\"+b);window.imraid.broadcastEvent(d,c)};a.fireMediaErrorEvent=function(a,b){var c={name:\"error\"};c.code=b;var d=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(d=d+\"_\"+a);window.imraid.broadcastEvent(d,c)};a.fireMediaTimeUpdateEvent=function(a,b,c){var d={name:\"timeupdate\",target:{}};d.target.currentTime=b;d.target.duration=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.saveContent=function(a,\nb,c){window.imraid.addEventListener(\"saveContent_\"+a,c);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",a)};a.fireGalleryImageSelectedEvent=function(a,b,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"galleryImageSelected\",d)};a.fireCameraPictureCatpturedEvent=function(a,\nb,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"cameraPictureCaptured\",d)};a.fireMediaCloseEvent=function(a,b,c){var d={name:\"close\"};d.viaUserInteraction=b;d.target={};d.target.currentTime=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireMediaVolumeChangeEvent=function(a,b,c){var d={name:\"volumechange\",target:{}};d.target.volume=b;d.target.muted=c;b=\"inmobi_media_\"+d.name;\n\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=function(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(b,c){try{600<=getSdkVersionInt()?sdkController.openExternal(\"window.imraidview\",\nb,c):sdkController.openExternal(\"window.imraidview\",b)}catch(d){a.showAlert(\"openExternal: \"+d)}};a.log=function(b){try{sdkController.log(\"window.imraidview\",b)}catch(c){a.showAlert(\"log: \"+c)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(b){try{sdkController.asyncPing(\"window.imraidview\",b)}catch(c){a.showAlert(\"asyncPing: \"+c)}};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=function(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};\na.startListeningDeviceVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningDeviceVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};a.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};getSdkVersionInt=\nfunction(){for(var b=a.getSdkVersion().split(\".\"),c=b.length,d=\"\",f=0;f<c;f++)d+=b[f];return parseInt(d)};a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");if(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(a,b,c,d){a=parseInt(a);isNaN(a)?window.imraid.broadcastEvent(\"error\",\n\"socialType must be an integer\",\"postToSocial\"):(\"string\"!=typeof b&&(b=\"\"),\"string\"!=typeof c&&(c=\"\"),\"string\"!=typeof d&&(d=\"\"),sdkController.postToSocial(\"window.imraidview\",a,b,c,d))};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",null);else try{sdkController.incentCompleted(\"window.imraidview\",JSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(b){a.showAlert(\"getOrientation: \"+\nb)}};a.acceptAction=function(b){try{sdkController.acceptAction(\"window.imraidview\",mraidview.stringify(b))}catch(c){a.showAlert(\"acceptAction: \"+c+\", params = \"+b)}};a.rejectAction=function(b){try{sdkController.rejectAction(\"window.imraidview\",mraidview.stringify(b))}catch(c){a.showAlert(\"rejectAction: \"+c+\", params = \"+b)}};a.updateToPassbook=function(b){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=\nsdkController.isDeviceMuted(\"window.imraidview\")};a.getDeviceVolume=function(){return 603>=getSdkVersionInt()?-1:sdkController.getDeviceVolume(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,arguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\n\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",a)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};a.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,d,e){var k=arguments.length,h,f=null;if(3>k){if(\"function\"===typeof arguments[k-1])h=arguments[k-1];else return;f={reason:1}}else a.saveContentIDMap[c]&&(h=arguments[2],f={reason:11,url:arguments[1]});\"function\"!==!h&&(f?(window.imraid.addEventListener(\"saveContent_failed_\"+\nc,h),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(f))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,d,e)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.getVendorName=function(){return\"inmobi\"};a.openExternal=function(a,d){mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a,d)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):b.updateToPassbook(c))};a.postToSocial=function(a,d,e,k){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||\nb.postToSocial(a,d,e,k)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=function(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.supports=function(a){return b.supports(a)};a.isDeviceMuted=function(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=function(){return b.getDeviceVolume()};\na.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(d){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a,c){600<=getSdkVersionInt()?sdkController.openExternal(\"window.imaiview\",a,c):sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||\nnull==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",JSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var e=-1;try{e=a.indexOf(b)}catch(k){}return e};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,d,e){if(!imIsObjValid(d)||!imIsObjValid(e))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+d+\",\"+e):a+(\"&u-tap-o=\"+d+\",\"+e));return a};b.performAdClick=function(a,d){d=d||event;if(imIsObjValid(a)){var e=a.clickConfig,k=a.landingConfig;if(!imIsObjValid(e)&&!imIsObjValid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,m=null,n=null,l=null,q=null,p=null;if(imIsObjValid(d))try{m=d.changedTouches[0].pageX,n=d.changedTouches[0].pageY}catch(r){n=\nm=0}imIsObjValid(k)?imIsObjValid(e)?(l=k.url,q=k.fallbackUrl,p=k.urlType,h=e.url,f=e.pingWV,g=e.fr):(l=k.url,p=k.urlType):(l=e.url,p=e.urlType);e=b.getPlatform();try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;if(\"number\"!=typeof p||null==p)p=0;h=b.appendTapParams(h,m,n);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjValid(h)||\n(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==e?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+e);break;default:b.openExternal(l,q)}else b.log(\"Landing url provided is null.\")}catch(s){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,d){d=d||event;if(imIsObjValid(a)){var e=a.clickConfig,k=a.landingConfig;\nif(!imIsObjValid(e)&&!imIsObjValid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,m=null,n=null;if(imIsObjValid(d))try{m=d.changedTouches[0].pageX,n=d.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(e)&&(h=e.url,f=e.pingWV,g=e.fr);try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=\n!0;if(0>f||1<f)f=!0;h=b.appendTapParams(h,m,n);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");b.onUserInteraction(k)}catch(q){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=function(b){mraidview.detectAndBlockFraud(\"imai.openEmbedded\")||a.openEmbedded(b)};\nb.openExternal=function(b,d){mraidview.detectAndBlockFraud(\"imai.openExternal\")||a.openExternal(b,d)};b.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.loadSKStore=a.loadSKStore;b.showSKStore=function(b){mraidview.detectAndBlockFraud(\"imai.showSKStore\")||a.showSKStore(b)};b.ios.openItunesProductView=function(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;\nb.fireAdFailed=a.fireAdFailed})();"

    .line 1304
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v3, "Returning default Mraid Js string."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    :goto_0
    return-object v0

    .line 1306
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v3, "Returning fetched Mraid Js string."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOrientationProperties()Lcom/inmobi/rendering/mraid/i;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/i;

    return-object v0
.end method

.method public getOriginalRenderView()Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method public getPubActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getReferenceContainer()Lcom/inmobi/ads/AdContainer;
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderViewContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 314
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getRenderingConfig()Lcom/inmobi/ads/c$f;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->q:Lcom/inmobi/ads/c$f;

    return-object v0
.end method

.method public getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    return-object v0
.end method

.method public getResizeProperties()Lcom/inmobi/rendering/mraid/j;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->v:Lcom/inmobi/rendering/mraid/j;

    return-object v0
.end method

.method public getState()Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method public getVideoContainerView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 647
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method public getViewableAd()Lcom/inmobi/ads/ViewableAd;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/ads/ViewableAd;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/inmobi/ads/bn;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/bn;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/ads/ViewableAd;

    .line 660
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getPubActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v2, v0

    .line 662
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->R:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->R:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bd;

    .line 665
    sget-object v1, Lcom/inmobi/rendering/RenderView$7;->b:[I

    iget-object v4, v0, Lcom/inmobi/ads/bd;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-virtual {v4}, Lcom/inmobi/ads/AdUnit$AdTrackerType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 670
    :pswitch_0
    iget-object v1, v0, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v4, "avidAdSession"

    .line 671
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/integralads/avid/library/inmobi/session/a;

    .line 672
    iget-object v4, v0, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v5, "deferred"

    .line 673
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v4, "deferred"

    .line 674
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 675
    :goto_2
    if-eqz v1, :cond_3

    .line 676
    new-instance v4, Lcom/inmobi/ads/q;

    iget-object v5, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/ads/ViewableAd;

    invoke-direct {v4, v2, v5, v1, v0}, Lcom/inmobi/ads/q;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/integralads/avid/library/inmobi/session/a;Z)V

    iput-object v4, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/ads/ViewableAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 690
    :catch_0
    move-exception v0

    .line 691
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while creating the HTML viewable ad : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 693
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/ads/ViewableAd;

    return-object v0

    .line 661
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 674
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 679
    :cond_3
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    const-string v4, "Did not find a AVID ad session; the IAS decorator will not be applied."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 685
    :pswitch_1
    new-instance v1, Lcom/inmobi/ads/x;

    iget-object v4, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/ads/ViewableAd;

    iget-object v0, v0, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    invoke-direct {v1, v2, v4, v0}, Lcom/inmobi/ads/x;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/ads/ViewableAd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 665
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->B:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->E:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->F:Z

    return v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    .line 867
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "broadcastEvent(\'backButtonPressed\')"

    .line 876
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    const-string v1, "broadcastEvent(\'backButtonPressed\')"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/h;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/h;->a()V

    .line 993
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setVisibility(I)V

    .line 1161
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestLayout()V

    .line 1162
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 1790
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->M:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 478
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 480
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->q()V

    .line 481
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 482
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    .line 484
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .prologue
    .line 502
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->p:Lcom/inmobi/rendering/a;

    invoke-virtual {v0}, Lcom/inmobi/rendering/a;->unRegisterBroadcastListener()V

    .line 506
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c()V

    .line 507
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d()V

    .line 508
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g()V

    .line 509
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->o:Lcom/inmobi/rendering/mraid/k;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/k;->a(Landroid/content/Context;)V

    .line 517
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detaching WebView from window encountered an error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 520
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 523
    const-string v2, "type"

    const-string v3, "IllegalArgumentException"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v2, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "ExceptionCaught"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 526
    :catch_1
    move-exception v0

    .line 527
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetey event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 528
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 488
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Touch event received, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->g()V

    .line 490
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onScreenStateChanged(I)V

    .line 443
    if-nez p1, :cond_1

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->d(Z)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->Q:Z

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->d(Z)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 405
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 406
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 409
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    .line 410
    invoke-static {p2}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v1

    .line 411
    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/RenderView;->a(II)V

    .line 413
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 434
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->Q:Z

    .line 436
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->d(Z)V

    .line 437
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 419
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 420
    :goto_0
    iget-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    if-ne v1, v0, :cond_1

    .line 425
    :goto_1
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    :cond_1
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->e(Z)V

    goto :goto_1
.end method

.method public setAdActiveFlag(Z)V
    .locals 0

    .prologue
    .line 1169
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 1170
    return-void
.end method

.method public setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V
    .locals 4

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    .line 1153
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView$RenderViewState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->g(Ljava/lang/String;)V

    .line 1157
    return-void
.end method

.method public setCloseRegionDisabled(Z)V
    .locals 0

    .prologue
    .line 850
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->E:Z

    .line 851
    return-void
.end method

.method public setCurrentPosition()V
    .locals 4

    .prologue
    .line 356
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    .line 357
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 358
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->getLocationOnScreen([I)V

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    const-string v2, "x"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    const-string v2, "y"

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 362
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    .line 363
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v1

    .line 364
    iget-object v2, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 365
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->K:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    .line 371
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 372
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentPositionLock()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    .line 308
    return-void
.end method

.method public setDefaultPosition()V
    .locals 4

    .prologue
    .line 318
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 319
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    .line 320
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 321
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v2, "x"

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v2, "y"

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v1

    .line 330
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    .line 331
    iget-object v2, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->J:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->z:Z

    .line 347
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 348
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    return-void

    .line 337
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 338
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v1, "y"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 339
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 340
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v1, "height"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 333
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setDefaultPositionLock()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->z:Z

    .line 304
    return-void
.end method

.method public setDisableBackButton(Z)V
    .locals 0

    .prologue
    .line 854
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->F:Z

    .line 855
    return-void
.end method

.method public setExitAnimation(I)V
    .locals 0

    .prologue
    .line 986
    iput p1, p0, Lcom/inmobi/rendering/RenderView;->P:I

    .line 987
    return-void
.end method

.method public setExpandProperties(Lcom/inmobi/rendering/mraid/c;)V
    .locals 1

    .prologue
    .line 1136
    invoke-virtual {p1}, Lcom/inmobi/rendering/mraid/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p1}, Lcom/inmobi/rendering/mraid/c;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setUseCustomClose(Z)V

    .line 1139
    :cond_0
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/mraid/c;

    .line 1140
    return-void
.end method

.method public setFullScreenActivityContext(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    .line 382
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/i;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/i;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setOrientationProperties(Lcom/inmobi/rendering/mraid/i;)V

    .line 385
    :cond_0
    return-void
.end method

.method setIsInAppBrowser(Z)V
    .locals 0

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->g:Z

    .line 592
    return-void
.end method

.method public setOrientationProperties(Lcom/inmobi/rendering/mraid/i;)V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1177
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/i;

    .line 1178
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    .line 1179
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/inmobi/rendering/mraid/i;->a:Z

    if-nez v0, :cond_1

    .line 1181
    iget-object v3, p1, Lcom/inmobi/rendering/mraid/i;->b:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1221
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v0

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_8

    .line 1222
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1223
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1237
    :cond_1
    :goto_1
    return-void

    .line 1181
    :sswitch_0
    const-string v4, "landscape"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "portrait"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 1190
    :pswitch_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v0

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 1191
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v0

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v2

    .line 1192
    :goto_2
    if-eqz v0, :cond_5

    .line 1193
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v0

    .line 1194
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 1195
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1196
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1191
    goto :goto_2

    .line 1198
    :cond_4
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1199
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1203
    :cond_5
    iget-object v0, p1, Lcom/inmobi/rendering/mraid/i;->c:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1204
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1205
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1206
    :cond_6
    iget-object v0, p1, Lcom/inmobi/rendering/mraid/i;->c:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1208
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1212
    :pswitch_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 1213
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1214
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1216
    :cond_7
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1217
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1224
    :cond_8
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v0

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_9

    .line 1225
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1226
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1227
    :cond_9
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v0

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_a

    .line 1228
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1229
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1231
    :cond_a
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1232
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1181
    :sswitch_data_0
    .sparse-switch
        0x2b77bb9b -> :sswitch_1
        0x5545f2bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOriginalRenderView(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView;

    .line 258
    return-void
.end method

.method public setRequestedScreenOrientation()V
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/i;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/i;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setOrientationProperties(Lcom/inmobi/rendering/mraid/i;)V

    .line 642
    :cond_0
    return-void
.end method

.method public setResizeProperties(Lcom/inmobi/rendering/mraid/j;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->v:Lcom/inmobi/rendering/mraid/j;

    .line 1148
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 0

    .prologue
    .line 842
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->B:Z

    .line 843
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 725
    :cond_0
    return-void
.end method
