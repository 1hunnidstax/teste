.class public final Lcom/vungle/publisher/jt;
.super Lcom/vungle/publisher/em;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/em",
        "<",
        "Lcom/vungle/publisher/js;",
        "Lcom/vungle/publisher/jt;",
        ">;"
    }
.end annotation


# instance fields
.field h:Lcom/vungle/publisher/js$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/jt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/em;-><init>()V

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/jt;->u()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "index.html"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/qx;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/jt;->i:Lcom/vungle/publisher/jt$a;

    return-object v0
.end method

.method protected final bridge synthetic r()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/jt;->h:Lcom/vungle/publisher/js$a;

    return-object v0
.end method
