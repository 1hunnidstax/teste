.class public final Lcom/vungle/publisher/ip$a;
.super Lcom/vungle/publisher/jh$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jh$a",
        "<",
        "Lcom/vungle/publisher/ip;",
        "Lcom/vungle/publisher/hu;",
        "Lcom/vungle/publisher/aea;",
        "Lcom/vungle/publisher/jl;",
        "Lcom/vungle/publisher/hv$a;",
        "Lcom/vungle/publisher/aep;",
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
            "Lcom/vungle/publisher/ip;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/hv$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vungle/publisher/jh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/vungle/publisher/ed$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/ip$a;->b:Lcom/vungle/publisher/hv$a;

    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/jh;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/ip$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ip;

    return-object v0
.end method
