.class public final Lcom/vungle/publisher/fe;
.super Lcom/vungle/publisher/jm;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fe$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jm",
        "<",
        "Lcom/vungle/publisher/fj;",
        "Lcom/vungle/publisher/fe;",
        "Lcom/vungle/publisher/fk;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/fe$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/jm;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/fe;->e:Lcom/vungle/publisher/fe$a;

    return-object v0
.end method

.method protected final bridge synthetic b()Lcom/vungle/publisher/cr$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/fe;->e:Lcom/vungle/publisher/fe$a;

    iget-object v0, v0, Lcom/vungle/publisher/fe$a;->b:Lcom/vungle/publisher/fk$a;

    return-object v0
.end method
