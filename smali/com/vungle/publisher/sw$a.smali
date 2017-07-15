.class public final Lcom/vungle/publisher/sw$a;
.super Lcom/vungle/publisher/mt$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/sw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mt$b",
        "<",
        "Lcom/vungle/publisher/sw;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field d:Lcom/vungle/publisher/sx$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/su;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/th;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vungle/publisher/mt$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;)Lcom/vungle/publisher/mt;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/vungle/publisher/sw;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/sw;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vungle/publisher/sw$a;->f:Lcom/vungle/publisher/th;

    iput-object v1, v0, Lcom/vungle/publisher/sw;->c:Lcom/vungle/publisher/th;

    return-object v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/mt;)V
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/vungle/publisher/sw;

    iget-object v0, p0, Lcom/vungle/publisher/sw$a;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/sw;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/String;Lcom/vungle/publisher/mt;Lcom/vungle/publisher/n;)V
    .locals 2

    .prologue
    .line 47
    check-cast p2, Lcom/vungle/publisher/sw;

    iget-object v1, p0, Lcom/vungle/publisher/sw$a;->d:Lcom/vungle/publisher/sx$a;

    iget-object v0, v1, Lcom/vungle/publisher/sx$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/sx;

    iget-object v1, v1, Lcom/vungle/publisher/sx$a;->b:Lcom/vungle/publisher/jc$a;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/jc$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/jc$b;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/sx;->a:Lcom/vungle/publisher/jc$b;

    invoke-static {v0, p3}, Lcom/vungle/publisher/sx;->a(Lcom/vungle/publisher/sx;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/n;

    iput-object v0, p2, Lcom/vungle/publisher/sw;->b:Lcom/vungle/publisher/sx;

    invoke-virtual {p2, v0}, Lcom/vungle/publisher/sw;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
