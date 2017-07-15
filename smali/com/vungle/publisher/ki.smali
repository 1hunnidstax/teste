.class public final Lcom/vungle/publisher/ki;
.super Lcom/vungle/publisher/cp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ki$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cp",
        "<",
        "Lcom/vungle/publisher/kn;",
        "Lcom/vungle/publisher/ki;",
        "Lcom/vungle/publisher/ko;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/ki$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/cp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/ki;->e:Lcom/vungle/publisher/ki$a;

    return-object v0
.end method

.method protected final bridge synthetic b()Lcom/vungle/publisher/cr$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/ki;->e:Lcom/vungle/publisher/ki$a;

    iget-object v0, v0, Lcom/vungle/publisher/ki$a;->b:Lcom/vungle/publisher/ko$a;

    return-object v0
.end method
