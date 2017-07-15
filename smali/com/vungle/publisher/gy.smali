.class public final Lcom/vungle/publisher/gy;
.super Lcom/vungle/publisher/cp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cp",
        "<",
        "Lcom/vungle/publisher/hd;",
        "Lcom/vungle/publisher/gy;",
        "Lcom/vungle/publisher/he;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/gy$a;
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
    iget-object v0, p0, Lcom/vungle/publisher/gy;->e:Lcom/vungle/publisher/gy$a;

    return-object v0
.end method

.method protected final bridge synthetic b()Lcom/vungle/publisher/cr$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/gy;->e:Lcom/vungle/publisher/gy$a;

    iget-object v0, v0, Lcom/vungle/publisher/gy$a;->b:Lcom/vungle/publisher/he$a;

    return-object v0
.end method
