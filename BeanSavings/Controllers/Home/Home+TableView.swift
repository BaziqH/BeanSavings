/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - TABLE VIEW
extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            return loadFamilyRowTVuCell(indexPath)
        } else if indexPath.section == 1 {
            return loadSuggestionRowTVuCell(indexPath)
        } else if indexPath.section == 2 {
            return loadMessagesRowTVuCell(indexPath)
        } else if indexPath.section == 3 {
            return loadOffersRowTVuCell(indexPath)
        }
        return UITableViewCell()
    }
}
//MARK: - LOAD CELLS
extension HomeVC{
    func loadFamilyRowTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "FamilyRowTVuCell", for: indexPath) as? FamilyRowTVuCell else {
            return FamilyRowTVuCell()
        }
        return cell
    }
    func loadSuggestionRowTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "SuggestionRowTVuCell", for: indexPath) as? SuggestionRowTVuCell else {
            return SuggestionRowTVuCell()
        }
        return cell
    }
    func loadMessagesRowTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "MessagesRowTVuCell", for: indexPath) as? MessagesRowTVuCell else {
            return MessagesRowTVuCell()
        }
        return cell
    }
    func loadOffersRowTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "OffersRowTVuCell", for: indexPath) as? OffersRowTVuCell else {
            return OffersRowTVuCell()
        }
        return cell
    }
}
//MARK: - SETUP TABLE VIEW
extension HomeVC{
    
    func setupTableView(){
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        homeTableView.rowHeight = UITableView.automaticDimension
        homeTableView.estimatedRowHeight = 150
    }
    //MARK: - REGISTER NIBS
    func registerNibs(){
        let familyRowNib = UINib(nibName: "FamilyRowTVuCell", bundle: nil)
        homeTableView.register(familyRowNib, forCellReuseIdentifier: "FamilyRowTVuCell")
        
        let suggestNib = UINib(nibName: "SuggestionRowTVuCell", bundle: nil)
        homeTableView.register(suggestNib, forCellReuseIdentifier: "SuggestionRowTVuCell")
        
        let messageNib = UINib(nibName: "MessagesRowTVuCell", bundle: nil)
        homeTableView.register(messageNib, forCellReuseIdentifier: "MessagesRowTVuCell")
        
        let offerNib = UINib(nibName: "OffersRowTVuCell", bundle: nil)
        homeTableView.register(offerNib, forCellReuseIdentifier: "OffersRowTVuCell")
    }
}
