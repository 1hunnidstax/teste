.class final Lcom/vungle/publisher/om$a;
.super Lcom/vungle/publisher/mt$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/om;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mt$b",
        "<",
        "Lcom/vungle/publisher/om;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field d:Lcom/vungle/publisher/mm;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/mj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/mt$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;)Lcom/vungle/publisher/mt;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/vungle/publisher/om;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vungle/publisher/om;-><init>(Landroid/content/Context;B)V

    return-object v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/mt;)V
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/vungle/publisher/om;

    iget-object v0, p0, Lcom/vungle/publisher/om$a;->e:Lcom/vungle/publisher/mj;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/om;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/String;Lcom/vungle/publisher/mt;Lcom/vungle/publisher/n;)V
    .locals 1

    .prologue
    .line 19
    check-cast p2, Lcom/vungle/publisher/om;

    iget-object v0, p0, Lcom/vungle/publisher/om$a;->d:Lcom/vungle/publisher/mm;

    invoke-virtual {p2, v0}, Lcom/vungle/publisher/om;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
