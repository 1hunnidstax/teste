.class final Lcom/vungle/publisher/do$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/do;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/cq",
            "<****>;)",
            "Lcom/vungle/publisher/do;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/do$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/do;

    .line 64
    iput-object p1, v0, Lcom/vungle/publisher/do;->a:Lcom/vungle/publisher/cq;

    .line 65
    return-object v0
.end method
