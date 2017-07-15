.class public interface abstract annotation Lcom/fyber/mediation/configs/TapjoyConfigs;
.super Ljava/lang/Object;
.source "TapjoyConfigs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
    name = "Tapjoy"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fyber/mediation/configs/TapjoyConfigs;
        debugEnabled = false
        interstitialPlacementName = ""
        sdkKey = ""
        userId = ""
        videoPlacementName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract debugEnabled()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "debugEnabled"
    .end annotation
.end method

.method public abstract interstitialPlacementName()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "interstitialPlacementName"
    .end annotation
.end method

.method public abstract sdkKey()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "sdkKey"
    .end annotation
.end method

.method public abstract userId()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "userId"
    .end annotation
.end method

.method public abstract videoPlacementName()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "videoPlacementName"
    .end annotation
.end method
