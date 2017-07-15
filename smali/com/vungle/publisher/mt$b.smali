.class public abstract Lcom/vungle/publisher/mt$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/mt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Lcom/vungle/publisher/mt;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lcom/vungle/publisher/mt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TW;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/n;",
            ")TW;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/mt$b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/mt$b;->a(Landroid/content/Context;)Lcom/vungle/publisher/mt;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/vungle/publisher/mt$b;->c:Lcom/vungle/publisher/ql;

    iput-object v1, v0, Lcom/vungle/publisher/mt;->a:Lcom/vungle/publisher/ql;

    .line 88
    invoke-virtual {v0}, Lcom/vungle/publisher/mt;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    sget-object v2, Lcom/vungle/publisher/pj;->e:Lcom/vungle/publisher/pj;

    invoke-static {v2}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/mt;->setBackgroundColor(I)V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/mt;->setBackgroundResource(I)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/vungle/publisher/mt$b;->a(Ljava/lang/String;Lcom/vungle/publisher/mt;Lcom/vungle/publisher/n;)V

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/mt$b;->a(Lcom/vungle/publisher/mt;)V

    sget-object v1, Lcom/vungle/publisher/pj;->g:Lcom/vungle/publisher/pj;

    invoke-static {v1}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 89
    :cond_1
    return-object v0
.end method

.method public abstract a(Lcom/vungle/publisher/mt;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/vungle/publisher/mt;Lcom/vungle/publisher/n;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TW;",
            "Lcom/vungle/publisher/n;",
            ")V"
        }
    .end annotation
.end method
