.class final Lcom/vungle/publisher/fe$a;
.super Lcom/vungle/publisher/jm$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jm$a",
        "<",
        "Lcom/vungle/publisher/fj;",
        "Lcom/vungle/publisher/fe;",
        "Lcom/vungle/publisher/fk;",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/en;",
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
            "Lcom/vungle/publisher/fe;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/fk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vungle/publisher/jm$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 24
    new-array v0, p1, [Lcom/vungle/publisher/fe;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vungle/publisher/fe$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fe;

    return-object v0
.end method
