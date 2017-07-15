.class public final Lcom/vungle/publisher/dx$b$2;
.super Lcom/vungle/publisher/dx$b$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dx$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/dx$b;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/dx$b;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/vungle/publisher/dx$b$2;->a:Lcom/vungle/publisher/dx$b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/publisher/dx$b$a;-><init>(Lcom/vungle/publisher/dx$b;B)V

    return-void
.end method


# virtual methods
.method final a(Lcom/vungle/publisher/dx;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dx",
            "<***>;)I"
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/vungle/publisher/dx;->b()I

    move-result v0

    return v0
.end method
