.class public final Lcom/vungle/publisher/kd;
.super Lcom/vungle/publisher/ed;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/kd$a;
    }
.end annotation


# instance fields
.field d:Lcom/vungle/publisher/kd$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/ed;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/kd;->d:Lcom/vungle/publisher/kd$a;

    return-object v0
.end method
