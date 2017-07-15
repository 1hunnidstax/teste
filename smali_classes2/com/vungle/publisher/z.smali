.class public abstract Lcom/vungle/publisher/z;
.super Lcom/vungle/publisher/qd;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        ">",
        "Lcom/vungle/publisher/qd;",
        "Lcom/vungle/publisher/y",
        "<TA;>;"
    }
.end annotation


# instance fields
.field protected final b:Lcom/vungle/publisher/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/cj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/vungle/publisher/qd;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/vungle/publisher/z;->b:Lcom/vungle/publisher/cj;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/cj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vungle/publisher/z;->b:Lcom/vungle/publisher/cj;

    return-object v0
.end method
