T=readtable("Heart_Pathology_Dataset.csv");
V=readtable("falldetection_dataset.csv");

%Exercice1
%delete rows with missing values
T=rmmissing(T);
Pathology=T.Pathology;
T1=T(:,1:13);


%1.
% Cross varidation (train: 80%, test: 20%)
cv = cvpartition(size(T1,1),'HoldOut',0.2);
%T1test = T1(cv.test, :);
%T1train = T1(cv.training,:);
%2 choisir 3 méthodes de classification
%knnmodel = fitcknn(T1train,Pathology(1:238,1:end));
%treemodel = fitctree(T1train,Pathology(1:238,1:end));
%nbmodel = fitcnb(T1train,Pathology(1:238,1:end));
%loss
%treeLoss=loss(treemodel,T1test,Pathology(239:297,:));
%knnLoss=loss(knnmodel,T1test,Pathology(239:297,:));
%nbLoss=loss(nbmodel,T1test,Pathology(239:297,:));
%predictions
knnPred=predict(knnmodel,T1test);
treePred=predict(treemodel,T1test);
nbPred=predict(nbmodel,T1test);
%confusion chart
%Ctree=confusionchart(treePred,Pathology(239:297,:));
%Cknn=confusionchart(knnPred,Pathology(239:297,:));
%Cnb=confusionchart(nbPred,Pathology(239:297,:));
% PArtie 2 => reduction

%T1{:,1:end}=zscore(T1{:,1:end});
%[~,tfmData,~,~,pctExp] = pca(T1{:,1:end});
%pareto(pctExp)
%PCApreds=tfmData(:,1:1);
%mdl=fitcknn(PCApreds,Pathology);
%mdlLoss=loss(mdl,PCApreds,Pathology);
%s=0;
%pos=0;
%for j=1:length(pctExp)
 %   s=s+pctExp(j);
  %  if (s/sum(pctExp(j))) > 0
    %    pos=j;
   %     break
    %end
%end

[idx,scores]=fscchi2(T1,Pathology);
tokeep=idx(1:5);
selected=T1(: , [tokeep end]);
xticklabels=(T1.Properties.VariableNames(tokeep));
mdlpart=fitctree(selected,Pathology);
prtLoss=loss(mdlpart,selected,Pathology);

%1.PCA
V.Var2=categorical(V.Var2);
V1=V(:,3:end);
V1{:,1:end}=zscore(V1{:,1:end});
[~,tfmData,~,~,pctExp] = pca(V1{:,1:end});
%pareto(pctExp)
%PCApreds=tfmData(:,1:1);
%mdl=fitcknn(PCApreds,Pathology);
%mdlLoss=loss(mdl,PCApreds,Pathology);

grp=kmeans(V1,2);
silhouette(V1,grp)




