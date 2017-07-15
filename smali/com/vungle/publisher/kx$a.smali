.class public final Lcom/vungle/publisher/kx$a;
.super Lcom/vungle/publisher/jh$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jh$a",
        "<",
        "Lcom/vungle/publisher/kx;",
        "Lcom/vungle/publisher/js;",
        "Lcom/vungle/publisher/aef;",
        "Lcom/vungle/publisher/kd;",
        "Lcom/vungle/publisher/kd$a;",
        "Lcom/vungle/publisher/abp;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/kx;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/kd$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/publisher/jh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/vungle/publisher/ed$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/kx$a;->b:Lcom/vungle/publisher/kd$a;

    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/jh;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/kx$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kx;

    return-object v0
.end method
