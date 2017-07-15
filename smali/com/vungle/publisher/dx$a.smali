.class public abstract Lcom/vungle/publisher/dx$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        "R:",
        "Lcom/vungle/publisher/ade;",
        "F:",
        "Lcom/vungle/publisher/cj$a",
        "<TA;TR;>;C:",
        "Lcom/vungle/publisher/dx",
        "<TA;TR;TF;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/vungle/publisher/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public final a(Lcom/vungle/publisher/cj$a;)Lcom/vungle/publisher/dx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TC;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/vungle/publisher/dx$a;->a()Lcom/vungle/publisher/dx;

    move-result-object v0

    .line 133
    iput-object p1, v0, Lcom/vungle/publisher/dx;->d:Lcom/vungle/publisher/cj$a;

    .line 134
    return-object v0
.end method
