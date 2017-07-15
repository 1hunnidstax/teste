.class public final Lcom/vungle/publisher/ip;
.super Lcom/vungle/publisher/jh;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ip$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jh",
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


# instance fields
.field a:Lcom/vungle/publisher/ip$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/jh;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/jh$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/ip;->a:Lcom/vungle/publisher/ip$a;

    return-object v0
.end method
