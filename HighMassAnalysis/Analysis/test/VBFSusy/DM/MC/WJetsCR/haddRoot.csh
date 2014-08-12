for y in `ls -d */`
do
  new_file=`echo $y | sed 's!/!!'`
  ls ${new_file}/CutCrab/res/*root > ${new_file}_outputFiles.log
  NUMOFLINES=$(wc -l <  ${new_file}_outputFiles.log)
  counter=0
  for f in `cat ${new_file}_outputFiles.log`   
  do
    counter=`expr $counter + 1`
    if [ "$counter" -ge 1 ] && [ "$counter" -lt 201 ] ; then 
      if [ "$counter" -lt 2 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_1
      fi   
      mv $f  ${new_file}/CutCrab/res/${new_file}_1
    fi

    if [ "$counter" -ge 201 ] && [ "$counter" -lt 401 ] ; then 
      if [ "$counter" -lt 202 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_2
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_2
    fi
    
    if [ "$counter" -ge 401 ] && [ "$counter" -lt 601 ] ; then
      if [ "$counter" -lt 402 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_3
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_3
    fi
    
    if [ "$counter" -ge 601 ] && [ "$counter" -lt 801 ] ; then
      if [ "$counter" -lt 602 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_4
      fi
      mv $f  ${new_file}/CutCrab/res/${new_file}_4
    fi
  
    if [ "$counter" -ge 801 ] && [ "$counter" -lt 1001 ] ; then
      if [ "$counter" -lt 802 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_5
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_5
    fi

    if [ "$counter" -ge 1001 ] && [ "$counter" -lt 1201 ] ; then
      if [ "$counter" -lt 1002 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_6
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_6
    fi

    if [ "$counter" -ge 1201 ] && [ "$counter" -lt 1401 ] ; then
      if [ "$counter" -lt 1202 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_7
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_7
    fi

    if [ "$counter" -ge 1401 ] && [ "$counter" -lt 1601 ] ; then
      if [ "$counter" -lt 1402 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_8
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_8
    fi 

    if [ "$counter" -ge 1601 ] && [ "$counter" -lt 1801 ] ; then
      if [ "$counter" -lt 1602 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_9
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_9
    fi 

    if [ "$counter" -ge 1801 ] && [ "$counter" -lt 2001 ] ; then
      if [ "$counter" -lt 1802 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_10
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_10
    fi 

    if [ "$counter" -ge 2001 ] && [ "$counter" -lt 2401 ] ; then
      if [ "$counter" -lt 2002 ] ; then
        mkdir ${new_file}/CutCrab/res/${new_file}_11
      fi
      mv $f ${new_file}/CutCrab/res/${new_file}_11
    fi 

  done

  if [ "$NUMOFLINES" -lt 601 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi
  if [ "$NUMOFLINES" -ge 601 ] && [ "$NUMOFLINES" -lt 1201 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi
  if [ "$NUMOFLINES" -ge 1201 ] && [ "$NUMOFLINES" -lt 1801 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi 
  if [ "$NUMOFLINES" -ge 1801 ] && [ "$NUMOFLINES" -lt 2401 ] ; then
    hadd ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}_1/*root
    hadd ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}_2/*root
    hadd ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}_3/*root
    hadd ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}_4/*root
    hadd ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}_5/*root
    hadd ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}_6/*root
    hadd ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}_7/*root
    hadd ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}_8/*root
    hadd ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}_9/*root
    hadd ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}_10/*root
    hadd ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}_11/*root
    mkdir ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_1/${new_file}_1.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_2/${new_file}_2.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_3/${new_file}_3.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_4/${new_file}_4.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_5/${new_file}_5.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_6/${new_file}_6.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_7/${new_file}_7.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_8/${new_file}_8.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_9/${new_file}_9.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_10/${new_file}_10.root ${new_file}/CutCrab/res/${new_file}
    mv ${new_file}/CutCrab/res/${new_file}_11/${new_file}_11.root ${new_file}/CutCrab/res/${new_file}
    hadd ${new_file}/CutCrab/res/${new_file}/${new_file}.root ${new_file}/CutCrab/res/${new_file}/*root
    mv ${new_file}/CutCrab/res/${new_file}/${new_file}.root ../CombinedROOTfiles/
  fi 

#hadd ${new_file}.root ${new_file}/res/*root
done

