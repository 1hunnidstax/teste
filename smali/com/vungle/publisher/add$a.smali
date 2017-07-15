.class public abstract Lcom/vungle/publisher/add$a;
.super Lcom/vungle/publisher/abg$c;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/add;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Lcom/vungle/publisher/add",
        "<TQ;>;>",
        "Lcom/vungle/publisher/abg$c",
        "<TQ;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/abg$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/vungle/publisher/abg;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/vungle/publisher/add$a;->c()Lcom/vungle/publisher/add;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/vungle/publisher/add;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0}, Lcom/vungle/publisher/abg$c;->a()Lcom/vungle/publisher/abg;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/add;

    return-object v0
.end method
