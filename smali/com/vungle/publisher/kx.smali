.class public final Lcom/vungle/publisher/kx;
.super Lcom/vungle/publisher/jh;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/kx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jh",
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


# instance fields
.field a:Lcom/vungle/publisher/kx$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/jh;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/jh$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/kx;->a:Lcom/vungle/publisher/kx$a;

    return-object v0
.end method
