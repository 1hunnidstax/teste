.class public final Lcom/vungle/publisher/ne$a$1;
.super Lcom/vungle/publisher/o;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ne$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/o",
        "<TP;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ne$a;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ne$a;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vungle/publisher/ne$a$1;->a:Lcom/vungle/publisher/ne$a;

    invoke-direct {p0}, Lcom/vungle/publisher/o;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vungle/publisher/ne$a$1;->a:Lcom/vungle/publisher/ne$a;

    iget-object v0, v0, Lcom/vungle/publisher/ne$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ne;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vungle/publisher/ne$a$1;->a:Lcom/vungle/publisher/ne$a;

    iget-object v0, v0, Lcom/vungle/publisher/ne$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ne;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vungle/publisher/ne$a$1;->a:Lcom/vungle/publisher/ne$a;

    iget-object v0, v0, Lcom/vungle/publisher/ne$a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ne;

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vungle/publisher/ne$a$1;->a:Lcom/vungle/publisher/ne$a;

    iget-object v0, v0, Lcom/vungle/publisher/ne$a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ne;

    return-object v0
.end method
