.class public abstract Lcom/vungle/publisher/aeo$a;
.super Lcom/vungle/publisher/abv;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/aeo;",
        ">",
        "Lcom/vungle/publisher/abv",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vungle/publisher/abv;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aeo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aeo$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aeo;

    move-result-object v0

    return-object v0
.end method
