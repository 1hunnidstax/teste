.class final Lcom/vungle/publisher/yp$a;
.super Lcom/vungle/publisher/yg$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/yp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/yg$a",
        "<",
        "Lcom/vungle/publisher/ack;",
        "Lcom/vungle/publisher/yp;",
        "Lcom/vungle/publisher/fj;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/ack$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/yg$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b()Lcom/vungle/publisher/vs;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/vungle/publisher/yp;

    invoke-direct {v0}, Lcom/vungle/publisher/yp;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic d()Lcom/vungle/publisher/ace$a;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vungle/publisher/yp$a;->g:Lcom/vungle/publisher/ack$a;

    return-object v0
.end method

.method protected final synthetic e()Lcom/vungle/publisher/yg;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/vungle/publisher/yp;

    invoke-direct {v0}, Lcom/vungle/publisher/yp;-><init>()V

    return-object v0
.end method
